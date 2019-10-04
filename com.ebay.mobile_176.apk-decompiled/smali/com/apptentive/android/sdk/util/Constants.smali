.class public Lcom/apptentive/android/sdk/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/util/Constants$FragmentTypes;,
        Lcom/apptentive/android/sdk/util/Constants$FragmentConfigKeys;
    }
.end annotation


# static fields
.field public static final API_VERSION:I = 0x9

.field public static final CONFIG_DEFAULT_APP_CONFIG_EXPIRATION_DURATION_SECONDS:I = 0x15180

.field public static final CONFIG_DEFAULT_APP_CONFIG_EXPIRATION_MILLIS:I = 0x0

.field public static final CONFIG_DEFAULT_HIDE_BRANDING:Z = false

.field public static final CONFIG_DEFAULT_INTERACTION_CACHE_EXPIRATION_DURATION_SECONDS:I = 0x7080

.field public static final CONFIG_DEFAULT_MESSAGE_CENTER_BG_POLL_SECONDS:I = 0x3c

.field public static final CONFIG_DEFAULT_MESSAGE_CENTER_ENABLED:Z = false

.field public static final CONFIG_DEFAULT_MESSAGE_CENTER_FG_POLL_SECONDS:I = 0xf

.field public static final CONFIG_DEFAULT_MESSAGE_CENTER_NOTIFICATION_POPUP_ENABLED:Z = false

.field public static final CONFIG_DEFAULT_SERVER_URL:Ljava/lang/String; = "https://api.apptentive.com"

.field public static final CONVERSATIONS_DIR:Ljava/lang/String; = "apptentive/conversations"

.field public static final CONVERSATION_METADATA_FILE:Ljava/lang/String; = "conversation-v2.meta"

.field public static final CONVERSATION_METADATA_FILE_LEGACY_V1:Ljava/lang/String; = "conversation-v1.meta"

.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0xafc8

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0xafc8

.field public static final EXAMPLE_APPTENTIVE_KEY_VALUE:Ljava/lang/String; = "YOUR_APPTENTIVE_KEY"

.field public static final EXAMPLE_APPTENTIVE_SIGNATURE_VALUE:Ljava/lang/String; = "YOUR_APPTENTIVE_SIGNATURE"

.field public static final FILE_APPTENTIVE_ENGAGEMENT_MANIFEST:Ljava/lang/String; = "apptentive-engagement-manifest.txt"

.field public static final LOG_FILE_EXT:Ljava/lang/String; = ".log"

.field public static final LOG_FILE_PREFIX:Ljava/lang/String; = "apptentive-"

.field public static final MANIFEST_KEY_APPTENTIVE_DEBUG:Ljava/lang/String; = "apptentive_debug"

.field public static final MANIFEST_KEY_APPTENTIVE_KEY:Ljava/lang/String; = "apptentive_key"

.field public static final MANIFEST_KEY_APPTENTIVE_LOG_LEVEL:Ljava/lang/String; = "apptentive_log_level"

.field public static final MANIFEST_KEY_APPTENTIVE_SIGNATURE:Ljava/lang/String; = "apptentive_signature"

.field public static final MANIFEST_KEY_EMAIL_REQUIRED:Ljava/lang/String; = "apptentive_email_required"

.field public static final MANIFEST_KEY_INITIALLY_HIDE_BRANDING:Ljava/lang/String; = "apptentive_initially_hide_branding"

.field public static final MANIFEST_KEY_MESSAGE_CENTER_ENABLED:Ljava/lang/String; = "apptentive_message_center_enabled"

.field public static final MANIFEST_KEY_SDK_DISTRIBUTION:Ljava/lang/String; = "apptentive_sdk_distribution"

.field public static final MANIFEST_KEY_SDK_DISTRIBUTION_VERSION:Ljava/lang/String; = "apptentive_sdk_distribution_version"

.field public static final MANIFEST_KEY_USE_STAGING_SERVER:Ljava/lang/String; = "apptentive_use_staging_server"

.field public static final NOTIFICATION_ACTION_DELETE:Ljava/lang/String; = "com.apptentive.notification.action.DELETE"

.field public static final NOTIFICATION_ACTION_DISPLAY:Ljava/lang/String; = "com.apptentive.notification.action.DISPLAY"

.field public static final NOTIFICATION_ACTION_NOTE_BUTTON_PRESSED:Ljava/lang/String; = "com.apptentive.notification.action.note.BUTTON_PRESSED"

.field public static final NOTIFICATION_CHANNEL_DEFAULT:Ljava/lang/String; = "com.apptentive.notification.channel.DEFAULT"

.field public static final NOTIFICATION_EXTRA_ID:Ljava/lang/String; = "com.apptentive.notification.extra.ID"

.field public static final NOTIFICATION_EXTRA_INTERACTION_DEFINITION:Ljava/lang/String; = "com.apptentive.notification.extra.INTERACTION_DEFINITION"

.field public static final NOTIFICATION_EXTRA_INTERACTION_TYPE:Ljava/lang/String; = "com.apptentive.notification.extra.INTERACTION_TYPE"

.field public static final NOTIFICATION_EXTRA_NOTE_ACTION_INDEX:Ljava/lang/String; = "com.apptentive.notification.extra.note.ACTION_INDEX"

.field public static final NOTIFICATION_ID_DEFAULT:I = -0x1124554

.field public static final PAYLOAD_DATA_DIR:Ljava/lang/String; = "payloads"

.field public static final PAYLOAD_DATA_FILE_SUFFIX:Ljava/lang/String; = ".data"

.field public static final PAYLOAD_ENCRYPTION_KEY_TRANSFORMATION:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field public static final PREF_KEY_API_KEY:Ljava/lang/String; = "apiKey"

.field public static final PREF_KEY_APP_ACTIVITY_STATE_QUEUE:Ljava/lang/String; = "appActivityStateQueue"

.field public static final PREF_KEY_APP_CONFIG_EXPIRATION:Ljava/lang/String; = "appConfiguration.cache-expiration"

.field public static final PREF_KEY_APP_CONFIG_JSON:Ljava/lang/String; = "appConfiguration.json"

.field public static final PREF_KEY_APP_CONFIG_PREFIX:Ljava/lang/String; = "appConfiguration."

.field public static final PREF_KEY_APP_MAIN_ACTIVITY_NAME:Ljava/lang/String; = "mainActivityName"

.field public static final PREF_KEY_APP_RELEASE:Ljava/lang/String; = "app_release"

.field public static final PREF_KEY_APP_VERSION_CODE:Ljava/lang/String; = "app_version_code"

.field public static final PREF_KEY_APP_VERSION_NAME:Ljava/lang/String; = "app_version_name"

.field public static final PREF_KEY_AUTO_MESSAGE_SHOWN_AUTO_MESSAGE:Ljava/lang/String; = "autoMessageShownAutoMessage"

.field public static final PREF_KEY_AUTO_MESSAGE_SHOWN_MANUAL:Ljava/lang/String; = "autoMessageShownManual"

.field public static final PREF_KEY_AUTO_MESSAGE_SHOWN_NO_LOVE:Ljava/lang/String; = "autoMessageShownNoLove"

.field public static final PREF_KEY_CODE_POINT_STORE:Ljava/lang/String; = "codePointStore"

.field public static final PREF_KEY_CONVERSATION_ID:Ljava/lang/String; = "conversationId"

.field public static final PREF_KEY_CONVERSATION_TOKEN:Ljava/lang/String; = "conversationToken"

.field public static final PREF_KEY_DEVICE:Ljava/lang/String; = "device"

.field public static final PREF_KEY_DEVICE_DATA:Ljava/lang/String; = "deviceData"

.field public static final PREF_KEY_DEVICE_DATA_SENT:Ljava/lang/String; = "deviceDataSent"

.field public static final PREF_KEY_DEVICE_INTEGRATION_CONFIG:Ljava/lang/String; = "integrationConfig"

.field public static final PREF_KEY_INTERACTIONS:Ljava/lang/String; = "interactions"

.field public static final PREF_KEY_INTERACTIONS_PAYLOAD_CACHE_EXPIRATION:Ljava/lang/String; = "interactionsCacheExpiration"

.field public static final PREF_KEY_LAST_SEEN_SDK_VERSION:Ljava/lang/String; = "lastSeenSdkVersion"

.field public static final PREF_KEY_MESSAGE_CENTER_FEATURE_USED:Ljava/lang/String; = "messageCenterFeatureUsed"

.field public static final PREF_KEY_MESSAGE_CENTER_PENDING_COMPOSING_ATTACHMENTS:Ljava/lang/String; = "messageCenterPendingComposingAttachments"

.field public static final PREF_KEY_MESSAGE_CENTER_PENDING_COMPOSING_MESSAGE:Ljava/lang/String; = "messageCenterPendingComposingMessage"

.field public static final PREF_KEY_MESSAGE_CENTER_SERVER_ERROR_LAST_ATTEMPT:Ljava/lang/String; = "messageCenterServerErrorLastAttempt"

.field public static final PREF_KEY_MESSAGE_CENTER_SHOULD_SHOW_INTRO_DIALOG:Ljava/lang/String; = "messageCenterShouldShowIntroDialog"

.field public static final PREF_KEY_MESSAGE_CENTER_WHO_CARD_DISPLAYED_BEFORE:Ljava/lang/String; = "messageCenterWhoCardSet"

.field public static final PREF_KEY_PENDING_PUSH_NOTIFICATION:Ljava/lang/String; = "pendingPushNotification"

.field public static final PREF_KEY_PERSON:Ljava/lang/String; = "person"

.field public static final PREF_KEY_PERSON_DATA:Ljava/lang/String; = "personData"

.field public static final PREF_KEY_PERSON_EMAIL:Ljava/lang/String; = "personEmail"

.field public static final PREF_KEY_PERSON_ID:Ljava/lang/String; = "personId"

.field public static final PREF_KEY_PERSON_INITIAL_EMAIL:Ljava/lang/String; = "personInitialEmail"

.field public static final PREF_KEY_PERSON_INITIAL_USER_NAME:Ljava/lang/String; = "personInitialUserName"

.field public static final PREF_KEY_PERSON_NAME:Ljava/lang/String; = "personName"

.field public static final PREF_KEY_POLL_FOR_INTERACTIONS:Ljava/lang/String; = "pollForInteractions"

.field public static final PREF_KEY_PUSH_PROVIDER:Ljava/lang/String; = "pushProvider"

.field public static final PREF_KEY_PUSH_TOKEN:Ljava/lang/String; = "pushToken"

.field public static final PREF_KEY_RATING_EVENTS:Ljava/lang/String; = "events"

.field public static final PREF_KEY_RATING_STATE:Ljava/lang/String; = "ratingState"

.field public static final PREF_KEY_RATING_USES:Ljava/lang/String; = "uses"

.field public static final PREF_KEY_SDK:Ljava/lang/String; = "sdk"

.field public static final PREF_KEY_SERVER_URL:Ljava/lang/String; = "serverUrl"

.field public static final PREF_KEY_START_OF_RATING_PERIOD:Ljava/lang/String; = "startOfRatingPeriod"

.field public static final PREF_KEY_SURVEYS:Ljava/lang/String; = "surveys"

.field public static final PREF_KEY_SURVEYS_CACHE_EXPIRATION:Ljava/lang/String; = "surveyCacheExpiration"

.field public static final PREF_KEY_SURVEYS_HISTORY:Ljava/lang/String; = "surveyHistory"

.field public static final PREF_KEY_TARGETS:Ljava/lang/String; = "targets"

.field public static final PREF_KEY_USER_ENTERED_EMAIL:Ljava/lang/String; = "userEnteredEmail"

.field public static final PREF_KEY_VERSION_HISTORY:Ljava/lang/String; = "versionHistory"

.field public static final PREF_KEY_VERSION_HISTORY_V2:Ljava/lang/String; = "versionHistoryV2"

.field public static final PREF_KEY_VERSION_HISTORY_V2_MIGRATED:Ljava/lang/String; = "versionHistoryV2Migrated"

.field public static final PREF_NAME:Ljava/lang/String; = "APPTENTIVE"

.field public static final REQUEST_CODE_CLOSE_COMPOSING_CONFIRMATION:I = 0x14

.field public static final REQUEST_CODE_PHOTO_FROM_SYSTEM_PICKER:I = 0xa

.field public static final REQUEST_READ_STORAGE_PERMISSION:I = 0x1

.field private static final networkTypeLookup:[Ljava/lang/String;

.field private static overriddenSdkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "UNKNOWN"

    const-string v1, "GPRS"

    const-string v2, "EDGE"

    const-string v3, "UMTS"

    const-string v4, "CDMA"

    const-string v5, "EVDO_0"

    const-string v6, "EVDO_A"

    const-string v7, "1xRTT"

    const-string v8, "HSDPA"

    const-string v9, "HSUPA"

    const-string v10, "HSPA"

    const-string v11, "IDEN"

    const-string v12, "EVDO_B"

    const-string v13, "LTE"

    const-string v14, "EHRPD"

    const-string v15, "HSPAP"

    const-string v16, "GSM"

    const-string v17, "TD_SCDMA"

    const-string v18, "IWLAN"

    .line 180
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apptentive/android/sdk/util/Constants;->networkTypeLookup:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApptentiveSdkVersion()Ljava/lang/String;
    .locals 1

    .line 214
    sget-object v0, Lcom/apptentive/android/sdk/util/Constants;->overriddenSdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/apptentive/android/sdk/util/Constants;->overriddenSdkVersion:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "5.4.1"

    return-object v0
.end method

.method public static networkTypeAsString(I)Ljava/lang/String;
    .locals 1

    .line 204
    :try_start_0
    sget-object v0, Lcom/apptentive/android/sdk/util/Constants;->networkTypeLookup:[Ljava/lang/String;

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 206
    :catch_0
    sget-object p0, Lcom/apptentive/android/sdk/util/Constants;->networkTypeLookup:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method
