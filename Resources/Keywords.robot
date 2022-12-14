
*** Variables ***

${url}         http://127.0.0.1:4723/wd/hub
${PlatFormName}      Android
#We'll need to find the Android version that the eHub is using.
${PlatFormVersion}   7.1.2
#This can be replaced with the device name if using a remote device via adroid studio
${DeviceName}        192.168.1.133:5555
${Activity_NAME}      com.sentrics.engage360..presentation.MainActivity
${PACKAGE_NAME}       com.sentrics.engage360

*** Keywords ***
Open App
# Enter to Aplications
    Open Application   ${url}
  ...   platformName=${PlatFormName}
  ...   platformVersion=${PlatFormVersion}
  ...   deviceName=${DeviceName}
  ...   automationName=UiAutomator2
  ...   newCommandTimeout=2500
  ...   noReset=True
  ...   activateName=${Activity_NAME}
  ...   packageName=${PACKAGE_NAME}

# NGG-TC-70
Home DVR
        Press KeyCode           22
        Press KeyCode           22
        Press Keycode           23
        Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvFilterSeated
# NGG-TC-69
Enter See All Recording Section DVR
        Press Keycode           23
        Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvSorting
        Press Keycode           4
        Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvFilterSeated
# NGG-TC-68
Enter Recording Schedule Section DVR
        Press Keycode           22
        Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvOptionRecordingSchedule
        Press Keycode           23
        Wait Until Element Is Visible           id=com.sentrics.engage360:id/recording_schedule_calendar_title
        Press Keycode           4
        Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvOptionRecordingSchedule
# NGG-TC-67
Enter Recording Priority Section DVR
        Press Keycode           22
        Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvOptionSeriesPriority
        Press Keycode           23
        Wait Until Element Is Visible           id=com.sentrics.engage360:id/series_priority_title
        Press Keycode           4
        Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvOptionSeriesPriority
# NGG-TC-66
Enter DVR Storage Section DVR
         Press Keycode           22
        Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvOptionDVRStorage
        Press Keycode           23
        Wait Until Element Is Visible           id=com.sentrics.engage360:id/recording_storage_title
        Press Keycode           4
        Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvOptionSeriesPriority
        Press Keycode           4

