.class public final Lcab/snapp/passenger/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "cab.snapp.passenger.play"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final FLAVOR:Ljava/lang/String; = "ProdGooglePlay"

.field public static final HOSTNAME:Ljava/lang/String; = "snapp.site"

.field public static final OAuth:Ljava/lang/String; = "https://oauth-passenger.snapp.site/v1/auth/"

.field public static final OAuth2:Ljava/lang/String; = "https://oauth-passenger.snapp.site/v1/auth/"

.field public static final OAuth3:Ljava/lang/String; = "https://oauth-passenger.snapp.site/v1/auth/"

.field public static final OAuthCloud:Ljava/lang/String; = "https://oauth-passenger.snapp.site/v1/auth/"

.field public static final OAuthCloud2:Ljava/lang/String; = "https://oauth-passenger.snapp.site/v1/auth/"

.field public static final OAuthCloud3:Ljava/lang/String; = "https://oauth-passenger.snapp.site/v1/auth/"

.field public static final OAuthCloud5:Ljava/lang/String; = "https://oauth-passenger.snapp.site/v1/auth/"

.field public static final OAuthCloudQA:Ljava/lang/String; = "https://passenger-oauth-snapp-ode-%s.apps.private.teh-1.snappcloud.io/v1/auth/"

.field public static final OAuth_Master_Rep:Ljava/lang/String; = "https://oauth-passenger.snapp.site/v1/auth/"

.field public static final SEND_ANALYTICS_DATA:Ljava/lang/Boolean;

.field public static final SEND_STAGING_ANALYTICS_DATA:Ljava/lang/Boolean;

.field public static final VERSION_CODE:I = 0xb8

.field public static final VERSION_NAME:Ljava/lang/String; = "4.7.0"

.field public static final baseApi:Ljava/lang/String; = "https://api.snapp.site/v2/passenger/"

.field public static final baseApi2:Ljava/lang/String; = "https://api.snapp.site/v2/passenger/"

.field public static final baseApi3:Ljava/lang/String; = "https://api.snapp.site/v2/passenger/"

.field public static final baseApiCloud:Ljava/lang/String; = "https://api.snapp.site/v2/passenger/"

.field public static final baseApiCloud2:Ljava/lang/String; = "https://api.snapp.site/v2/passenger/"

.field public static final baseApiCloud3:Ljava/lang/String; = "https://api.snapp.site/v2/passenger/"

.field public static final baseApiCloud5:Ljava/lang/String; = "https://api.snapp.site/v2/passenger/"

.field public static final baseApiCloudQA:Ljava/lang/String; = "https://base-api-snapp-ode-%s.apps.private.teh-1.snappcloud.io/v2/passenger/"

.field public static final baseApi_Master_Rep:Ljava/lang/String; = "https://api.snapp.site/v2/passenger/"

.field public static final chargeBaseApi:Ljava/lang/String; = "https://super-finance.snapp.site/api/v1/charge/"

.field public static final locationsBase:Ljava/lang/String; = "https://locations.snapp.site/v1/passenger/"

.field public static final locationsBase2:Ljava/lang/String; = "https://locations.snapp.site/v1/passenger/"

.field public static final locationsBase3:Ljava/lang/String; = "https://locations.snapp.site/v1/passenger/"

.field public static final locationsBaseCloud:Ljava/lang/String; = "https://locations.snapp.site/v1/passenger/"

.field public static final locationsBaseCloud2:Ljava/lang/String; = "https://locations.snapp.site/v1/passenger/"

.field public static final locationsBaseCloud3:Ljava/lang/String; = "https://locations.snapp.site/v1/passenger/"

.field public static final locationsBaseCloud5:Ljava/lang/String; = "https://locations.snapp.site/v1/passenger/"

.field public static final locationsBaseCloudQA:Ljava/lang/String; = "https://locations-snapp-ode-%s.apps.private.teh-1.snappcloud.io/v1/passenger/"

.field public static final locationsBase_Master_Rep:Ljava/lang/String; = "https://locations.snapp.site/v1/passenger/"

.field public static final smappBaseApi:Ljava/lang/String; = "https://gmaps.snapp.site/maps/api/place/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcab/snapp/passenger/c;->SEND_ANALYTICS_DATA:Ljava/lang/Boolean;

    .line 24
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcab/snapp/passenger/c;->SEND_STAGING_ANALYTICS_DATA:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
