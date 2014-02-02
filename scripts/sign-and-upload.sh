#!/bin/sh

PROVISIONING_PROFILE="$HOME/Library/MobileDevice/Provisioning Profiles/$PROFILE_NAME.mobileprovision"
OUTPUTDIR="$PWD/build/Release-iphoneos"

xcrun -log -sdk iphoneos PackageApplication "$OUTPUTDIR/$APP_NAME.app" -o "$OUTPUTDIR/$APP_NAME.ipa" -sign "$DEVELOPER_NAME" -embed "$PROVISIONING_PROFILE"

RELEASE_DATE=`date '+%Y-%m-%d %H:%M:%S'`
RELEASE_NOTES="Build: $TRAVIS_BUILD_NUMBER\nUploaded: $RELEASE_DATE\nCommit: $TRAVIS_COMMIT"

zip -r -9 "$OUTPUTDIR/$APP_NAME.app.dSYM.zip" "$OUTPUTDIR/$APP_NAME.app.dSYM"

curl http://testflightapp.com/api/builds.json \
  -F file="@$OUTPUTDIR/$APP_NAME.ipa" \
  -F dsym="@$OUTPUTDIR/$APP_NAME.app.dSYM.zip" \
  -F api_token="$TESTFLIGHT_API_TOKEN" \
  -F team_token="$TESTFLIGHT_TEAM_TOKEN" \
  -F distribution_lists='Internal' \
  -F notes="$RELEASE_NOTES" \
  -F notify='true'