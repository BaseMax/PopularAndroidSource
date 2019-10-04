.class public final Lcab/snapp/passenger/data_access_layer/network/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/data_access_layer/network/b$a;
    }
.end annotation


# static fields
.field public static BASE_URL:Ljava/lang/String; = "https://api.snapp.site/v2/passenger/"

.field public static DEV_1:Ljava/lang/String; = "Dev_1"

.field public static DEV_2:Ljava/lang/String; = "Dev_2"

.field public static DEV_3:Ljava/lang/String; = "Dev_3"

.field public static DEV_CLOUD_1:Ljava/lang/String; = "Dev_Cloud_1"

.field public static DEV_CLOUD_2:Ljava/lang/String; = "Dev_Cloud_2"

.field public static DEV_CLOUD_3:Ljava/lang/String; = "Dev_Cloud_3"

.field public static DEV_CLOUD_5:Ljava/lang/String; = "Dev_Cloud_5"

.field public static MASTER_REP:Ljava/lang/String; = "Master_Replica"

.field public static SWITCH_PASSENGER_DYNAMIC_ENDPOINT_PREF_KEY:Ljava/lang/String; = "switch_passenger_dynamic_endpoint_pref_key"

.field public static SWITCH_PASSENGER_ENDPOINT_PREF_KEY:Ljava/lang/String; = "switch_passenger_endpoint_pref_key"

.field private static a:Ljava/lang/String; = "https://oauth-passenger.snapp.site/v1/auth/"

.field private static b:Ljava/lang/String; = "https://locations.snapp.site/v1/passenger/"

.field private static c:Ljava/lang/String; = "https://gmaps.snapp.site/maps/api/place/"

.field private static d:Ljava/lang/String; = "https://super-finance.snapp.site/api/v1/charge/"


# instance fields
.field private e:Lcab/snapp/snappnetwork/d;

.field private f:Lcab/snapp/snappnetwork/d;

.field private g:Lcab/snapp/snappnetwork/d;

.field private h:Lcab/snapp/snappnetwork/d;

.field private i:Lcab/snapp/snappnetwork/d;

.field private final j:Lcab/snapp/snappnetwork/c;

.field private final k:Lcab/snapp/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcab/snapp/snappnetwork/c;Lcab/snapp/b/a;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/b;->j:Lcab/snapp/snappnetwork/c;

    .line 52
    iput-object p2, p0, Lcab/snapp/passenger/data_access_layer/network/b;->k:Lcab/snapp/b/a;

    .line 53
    invoke-virtual {p0, p2}, Lcab/snapp/passenger/data_access_layer/network/b;->initialize(Lcab/snapp/b/a;)V

    return-void
.end method

.method private static a()V
    .locals 1

    const-string v0, "https://api.snapp.site/v2/passenger/"

    .line 148
    sput-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->BASE_URL:Ljava/lang/String;

    const-string v0, "https://oauth-passenger.snapp.site/v1/auth/"

    .line 149
    sput-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->a:Ljava/lang/String;

    const-string v0, "https://locations.snapp.site/v1/passenger/"

    .line 150
    sput-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->b:Ljava/lang/String;

    const-string v0, "https://gmaps.snapp.site/maps/api/place/"

    .line 151
    sput-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAuthInstance()Lcab/snapp/snappnetwork/d;
    .locals 3

    .line 215
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->e:Lcab/snapp/snappnetwork/d;

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->j:Lcab/snapp/snappnetwork/c;

    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->a:Ljava/lang/String;

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getOauthHeaders()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/c;->buildModule(Ljava/lang/String;Ljava/util/HashMap;)Lcab/snapp/snappnetwork/d;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->e:Lcab/snapp/snappnetwork/d;

    .line 219
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->e:Lcab/snapp/snappnetwork/d;

    return-object v0
.end method

.method public final getBaseInstance()Lcab/snapp/snappnetwork/d;
    .locals 3

    .line 229
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->f:Lcab/snapp/snappnetwork/d;

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->j:Lcab/snapp/snappnetwork/c;

    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->BASE_URL:Ljava/lang/String;

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getPublicHeaders()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/c;->buildModule(Ljava/lang/String;Ljava/util/HashMap;)Lcab/snapp/snappnetwork/d;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->f:Lcab/snapp/snappnetwork/d;

    .line 233
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->f:Lcab/snapp/snappnetwork/d;

    return-object v0
.end method

.method public final getChargeInstance()Lcab/snapp/snappnetwork/d;
    .locals 3

    .line 273
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->i:Lcab/snapp/snappnetwork/d;

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->j:Lcab/snapp/snappnetwork/c;

    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->d:Ljava/lang/String;

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getPublicHeaders()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/c;->buildModule(Ljava/lang/String;Ljava/util/HashMap;)Lcab/snapp/snappnetwork/d;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->i:Lcab/snapp/snappnetwork/d;

    .line 277
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->i:Lcab/snapp/snappnetwork/d;

    return-object v0
.end method

.method public final getLocationInstance()Lcab/snapp/snappnetwork/d;
    .locals 3

    .line 243
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->g:Lcab/snapp/snappnetwork/d;

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->j:Lcab/snapp/snappnetwork/c;

    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->b:Ljava/lang/String;

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getPublicHeaders()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/c;->buildModule(Ljava/lang/String;Ljava/util/HashMap;)Lcab/snapp/snappnetwork/d;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->g:Lcab/snapp/snappnetwork/d;

    .line 247
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->g:Lcab/snapp/snappnetwork/d;

    return-object v0
.end method

.method public final getSmappInstance()Lcab/snapp/snappnetwork/d;
    .locals 3

    .line 257
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->h:Lcab/snapp/snappnetwork/d;

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->j:Lcab/snapp/snappnetwork/c;

    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->c:Ljava/lang/String;

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getPublicHeaders()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/c;->buildModule(Ljava/lang/String;Ljava/util/HashMap;)Lcab/snapp/snappnetwork/d;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->h:Lcab/snapp/snappnetwork/d;

    .line 261
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->h:Lcab/snapp/snappnetwork/d;

    return-object v0
.end method

.method public final initialize(Lcab/snapp/b/a;)V
    .locals 5

    if-eqz p1, :cond_d

    .line 62
    invoke-static {}, Lcab/snapp/passenger/f/a;->isEndpointSwitchEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 67
    :cond_0
    invoke-static {}, Lcab/snapp/passenger/f/a;->isDevCloudQAEnabled()Z

    move-result v0

    const-string v1, "https://gmaps.snapp.site/maps/api/place/"

    if-eqz v0, :cond_2

    .line 1091
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/b;->k:Lcab/snapp/b/a;

    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->SWITCH_PASSENGER_DYNAMIC_ENDPOINT_PREF_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1093
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/b;->k:Lcab/snapp/b/a;

    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->SWITCH_PASSENGER_DYNAMIC_ENDPOINT_PREF_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "https://base-api-snapp-ode-%s.apps.private.teh-1.snappcloud.io/v2/passenger/"

    .line 1095
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcab/snapp/passenger/data_access_layer/network/b;->BASE_URL:Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "https://passenger-oauth-snapp-ode-%s.apps.private.teh-1.snappcloud.io/v1/auth/"

    .line 1096
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcab/snapp/passenger/data_access_layer/network/b;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "https://locations-snapp-ode-%s.apps.private.teh-1.snappcloud.io/v1/passenger/"

    .line 1097
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcab/snapp/passenger/data_access_layer/network/b;->b:Ljava/lang/String;

    .line 1098
    sput-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->c:Ljava/lang/String;

    .line 1099
    invoke-virtual {p0}, Lcab/snapp/passenger/data_access_layer/network/b;->reset()V

    .line 1100
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/b;->j:Lcab/snapp/snappnetwork/c;

    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->a:Ljava/lang/String;

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getOauthHeaders()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcab/snapp/snappnetwork/c;->buildModule(Ljava/lang/String;Ljava/util/HashMap;)Lcab/snapp/snappnetwork/d;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/b;->e:Lcab/snapp/snappnetwork/d;

    .line 1101
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/b;->j:Lcab/snapp/snappnetwork/c;

    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->BASE_URL:Ljava/lang/String;

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getPublicHeaders()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcab/snapp/snappnetwork/c;->buildModule(Ljava/lang/String;Ljava/util/HashMap;)Lcab/snapp/snappnetwork/d;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/b;->f:Lcab/snapp/snappnetwork/d;

    .line 1102
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/b;->j:Lcab/snapp/snappnetwork/c;

    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->b:Ljava/lang/String;

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getPublicHeaders()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcab/snapp/snappnetwork/c;->buildModule(Ljava/lang/String;Ljava/util/HashMap;)Lcab/snapp/snappnetwork/d;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/b;->g:Lcab/snapp/snappnetwork/d;

    .line 1103
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/b;->j:Lcab/snapp/snappnetwork/c;

    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->c:Ljava/lang/String;

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getPublicHeaders()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcab/snapp/snappnetwork/c;->buildModule(Ljava/lang/String;Ljava/util/HashMap;)Lcab/snapp/snappnetwork/d;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/b;->h:Lcab/snapp/snappnetwork/d;

    .line 1104
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/b;->j:Lcab/snapp/snappnetwork/c;

    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->d:Ljava/lang/String;

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/a;->getPublicHeaders()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcab/snapp/snappnetwork/c;->buildModule(Ljava/lang/String;Ljava/util/HashMap;)Lcab/snapp/snappnetwork/d;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/b;->i:Lcab/snapp/snappnetwork/d;

    return-void

    .line 70
    :cond_2
    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->SWITCH_PASSENGER_ENDPOINT_PREF_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 72
    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->SWITCH_PASSENGER_ENDPOINT_PREF_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 1157
    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->DEV_1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "https://locations.snapp.site/v1/passenger/"

    const-string v3, "https://oauth-passenger.snapp.site/v1/auth/"

    const-string v4, "https://api.snapp.site/v2/passenger/"

    if-eqz v0, :cond_3

    .line 1159
    sput-object v4, Lcab/snapp/passenger/data_access_layer/network/b;->BASE_URL:Ljava/lang/String;

    .line 1160
    sput-object v3, Lcab/snapp/passenger/data_access_layer/network/b;->a:Ljava/lang/String;

    .line 1161
    sput-object v2, Lcab/snapp/passenger/data_access_layer/network/b;->b:Ljava/lang/String;

    .line 1162
    sput-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->c:Ljava/lang/String;

    return-void

    .line 1163
    :cond_3
    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->DEV_2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1165
    sput-object v4, Lcab/snapp/passenger/data_access_layer/network/b;->BASE_URL:Ljava/lang/String;

    .line 1166
    sput-object v3, Lcab/snapp/passenger/data_access_layer/network/b;->a:Ljava/lang/String;

    .line 1167
    sput-object v2, Lcab/snapp/passenger/data_access_layer/network/b;->b:Ljava/lang/String;

    .line 1168
    sput-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->c:Ljava/lang/String;

    return-void

    .line 1169
    :cond_4
    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->DEV_3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1171
    sput-object v4, Lcab/snapp/passenger/data_access_layer/network/b;->BASE_URL:Ljava/lang/String;

    .line 1172
    sput-object v3, Lcab/snapp/passenger/data_access_layer/network/b;->a:Ljava/lang/String;

    .line 1173
    sput-object v2, Lcab/snapp/passenger/data_access_layer/network/b;->b:Ljava/lang/String;

    .line 1174
    sput-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->c:Ljava/lang/String;

    return-void

    .line 1175
    :cond_5
    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->DEV_CLOUD_1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1177
    sput-object v4, Lcab/snapp/passenger/data_access_layer/network/b;->BASE_URL:Ljava/lang/String;

    .line 1178
    sput-object v3, Lcab/snapp/passenger/data_access_layer/network/b;->a:Ljava/lang/String;

    .line 1179
    sput-object v2, Lcab/snapp/passenger/data_access_layer/network/b;->b:Ljava/lang/String;

    .line 1180
    sput-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->c:Ljava/lang/String;

    return-void

    .line 1181
    :cond_6
    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->DEV_CLOUD_2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1183
    sput-object v4, Lcab/snapp/passenger/data_access_layer/network/b;->BASE_URL:Ljava/lang/String;

    .line 1184
    sput-object v3, Lcab/snapp/passenger/data_access_layer/network/b;->a:Ljava/lang/String;

    .line 1185
    sput-object v2, Lcab/snapp/passenger/data_access_layer/network/b;->b:Ljava/lang/String;

    .line 1186
    sput-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->c:Ljava/lang/String;

    return-void

    .line 1187
    :cond_7
    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->DEV_CLOUD_3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1189
    sput-object v4, Lcab/snapp/passenger/data_access_layer/network/b;->BASE_URL:Ljava/lang/String;

    .line 1190
    sput-object v3, Lcab/snapp/passenger/data_access_layer/network/b;->a:Ljava/lang/String;

    .line 1191
    sput-object v2, Lcab/snapp/passenger/data_access_layer/network/b;->b:Ljava/lang/String;

    .line 1192
    sput-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->c:Ljava/lang/String;

    return-void

    .line 1193
    :cond_8
    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->DEV_CLOUD_5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1195
    sput-object v4, Lcab/snapp/passenger/data_access_layer/network/b;->BASE_URL:Ljava/lang/String;

    .line 1196
    sput-object v3, Lcab/snapp/passenger/data_access_layer/network/b;->a:Ljava/lang/String;

    .line 1197
    sput-object v2, Lcab/snapp/passenger/data_access_layer/network/b;->b:Ljava/lang/String;

    .line 1198
    sput-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->c:Ljava/lang/String;

    return-void

    .line 1199
    :cond_9
    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/b;->MASTER_REP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1201
    sput-object v4, Lcab/snapp/passenger/data_access_layer/network/b;->BASE_URL:Ljava/lang/String;

    .line 1202
    sput-object v3, Lcab/snapp/passenger/data_access_layer/network/b;->a:Ljava/lang/String;

    .line 1203
    sput-object v2, Lcab/snapp/passenger/data_access_layer/network/b;->b:Ljava/lang/String;

    .line 1204
    sput-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->c:Ljava/lang/String;

    :cond_a
    return-void

    .line 79
    :cond_b
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b;->a()V

    return-void

    .line 84
    :cond_c
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b;->a()V

    :cond_d
    :goto_1
    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->e:Lcab/snapp/snappnetwork/d;

    .line 288
    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->f:Lcab/snapp/snappnetwork/d;

    .line 289
    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->g:Lcab/snapp/snappnetwork/d;

    .line 290
    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->h:Lcab/snapp/snappnetwork/d;

    .line 291
    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/b;->i:Lcab/snapp/snappnetwork/d;

    return-void
.end method
