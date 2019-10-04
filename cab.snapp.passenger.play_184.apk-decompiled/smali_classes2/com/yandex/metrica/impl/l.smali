.class public final Lcom/yandex/metrica/impl/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/ContentValues;

.field private c:Lcom/yandex/metrica/impl/ob/le;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/yandex/metrica/impl/l;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/l;)Landroid/content/ContentValues;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/l;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    return-object p0
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/le;)Lcom/yandex/metrica/impl/l;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    return-object p0
.end method

.method public final a()V
    .locals 4

    .line 1061
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    :try_start_0
    const-string v1, "dId"

    .line 1079
    iget-object v2, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    .line 1080
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/le;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    const-string v2, "uId"

    iget-object v3, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    .line 1081
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/le;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    const-string v2, "appVer"

    iget-object v3, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    .line 1082
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/le;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    const-string v2, "appBuild"

    iget-object v3, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    .line 1083
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/le;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    const-string v2, "analyticsSdkVersionName"

    iget-object v3, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    .line 1086
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/le;->h()Ljava/lang/String;

    move-result-object v3

    .line 1084
    invoke-virtual {v1, v2, v3}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    const-string v2, "kitBuildNumber"

    iget-object v3, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    .line 1088
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/le;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    const-string v2, "kitBuildType"

    iget-object v3, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    .line 1089
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/le;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    const-string v2, "osVer"

    iget-object v3, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    .line 1090
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/le;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    const-string v2, "osApiLev"

    iget-object v3, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    .line 1091
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/le;->n()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    const-string v2, "lang"

    iget-object v3, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    .line 1092
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/le;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    const-string v2, "root"

    iget-object v3, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    .line 1093
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/le;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    const-string v2, "app_debuggable"

    iget-object v3, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    .line 1094
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/le;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    const-string v2, "app_framework"

    iget-object v3, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    .line 1095
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/le;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    move-result-object v1

    const-string v2, "attribution_id"

    iget-object v3, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    .line 1096
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/le;->S()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1067
    :catch_0
    new-instance v0, Lorg/a/c;

    invoke-direct {v0}, Lorg/a/c;-><init>()V

    .line 1071
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    .line 1073
    invoke-virtual {v0}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "report_request_parameters"

    .line 1071
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/yandex/metrica/impl/bw;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/bw;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/yandex/metrica/impl/l;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/bw;->c(Landroid/content/Context;)I

    move-result p1

    .line 238
    :try_start_0
    new-instance v1, Lorg/a/c;

    invoke-direct {v1}, Lorg/a/c;-><init>()V

    const-string v2, "ssid"

    .line 239
    invoke-virtual {v1, v2, v0}, Lorg/a/c;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v0, "state"

    .line 240
    invoke-virtual {v1, v0, p1}, Lorg/a/c;->put(Ljava/lang/String;I)Lorg/a/c;

    .line 241
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    const-string v0, "wifi_access_point"

    .line 243
    invoke-virtual {v1}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/ob;Lcom/yandex/metrica/impl/b$a;)V
    .locals 6

    .line 204
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ob;->a:Lcom/yandex/metrica/impl/i;

    .line 205
    iget-object v1, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/i;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/i;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/i;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    iget-object v1, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/i;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "custom_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    iget-object v1, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    .line 210
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/i;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error_environment"

    .line 209
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/i;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_info"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/i;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "truncated"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    iget-object v1, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/yandex/metrica/impl/l;->a:Landroid/content/Context;

    .line 214
    invoke-static {v2}, Lcom/yandex/metrica/impl/av;->e(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "connection_type"

    .line 213
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    iget-object v1, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/i;->t()Ljava/lang/String;

    move-result-object v2

    const-string v3, "profile_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/ob;->b:Lcom/yandex/metrica/impl/ob/oe;

    .line 217
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/oe;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "encrypting_mode"

    .line 216
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    iget-object v1, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ob;->a:Lcom/yandex/metrica/impl/i;

    .line 219
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->u()Lcom/yandex/metrica/impl/t;

    move-result-object p1

    iget p1, p1, Lcom/yandex/metrica/impl/t;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "first_occurrence_status"

    .line 218
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1176
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    iget-object v1, p2, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    const-string v2, "app_environment"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    iget-wide v1, p2, Lcom/yandex/metrica/impl/b$a;->b:J

    .line 1182
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "app_environment_revision"

    .line 1180
    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2107
    new-instance p1, Lorg/a/c;

    invoke-direct {p1}, Lorg/a/c;-><init>()V

    :try_start_0
    const-string p2, "enabled"

    .line 2109
    iget-object v1, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/le;->J()Z

    move-result v1

    invoke-virtual {p1, p2, v1}, Lorg/a/c;->put(Ljava/lang/String;Z)Lorg/a/c;

    .line 2111
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/l;->b()Landroid/location/Location;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string v1, "lat"

    .line 3207
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;D)Lorg/a/c;

    const-string v1, "lon"

    .line 3209
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lorg/a/c;->put(Ljava/lang/String;D)Lorg/a/c;

    const-string v1, "timestamp"

    .line 3212
    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "precision"

    .line 3214
    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 3213
    :goto_0
    invoke-virtual {p1, v1, v2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "direction"

    .line 3216
    invoke-virtual {p2}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 3215
    :goto_1
    invoke-virtual {p1, v1, v2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "speed"

    .line 3217
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {p1, v1, v2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "altitude"

    .line 3219
    invoke-virtual {p2}, Landroid/location/Location;->hasAltitude()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v3

    .line 3218
    :goto_3
    invoke-virtual {p1, v1, v2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    const-string v1, "provider"

    .line 3221
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/yandex/metrica/impl/bt;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3220
    invoke-virtual {p1, v1, p2}, Lorg/a/c;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 2116
    :cond_4
    iget-object p2, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    const-string v1, "location_info"

    .line 2118
    invoke-virtual {p1}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2116
    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    .line 4187
    :goto_4
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/mw;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/mw;

    move-result-object p1

    .line 4188
    new-instance p2, Lcom/yandex/metrica/impl/l$2;

    invoke-direct {p2, p0}, Lcom/yandex/metrica/impl/l$2;-><init>(Lcom/yandex/metrica/impl/l;)V

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/mm;->a(Lcom/yandex/metrica/impl/ob/mz;)V

    .line 5165
    new-instance p2, Lcom/yandex/metrica/impl/l$1;

    invoke-direct {p2, p0}, Lcom/yandex/metrica/impl/l$1;-><init>(Lcom/yandex/metrica/impl/l;)V

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/mm;->a(Lcom/yandex/metrica/impl/ob/mo;)V

    .line 3228
    iget-object p1, p0, Lcom/yandex/metrica/impl/l;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/yandex/metrica/impl/bw;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bw;

    move-result-object p1

    .line 6146
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/i;->i()Lorg/a/a;

    move-result-object p2

    .line 6147
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bw;->a()Lorg/a/a;

    move-result-object v0

    .line 6150
    invoke-virtual {v0}, Lorg/a/a;->length()I

    move-result v1

    invoke-virtual {p2}, Lorg/a/a;->length()I

    move-result v2

    const-string v3, "wifi_network_info"

    if-le v1, v2, :cond_5

    .line 6151
    iget-object p2, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    .line 6153
    invoke-virtual {v0}, Lorg/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6151
    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 6156
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->b:Landroid/content/ContentValues;

    .line 6158
    invoke-virtual {p2}, Lorg/a/a;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6156
    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3230
    :goto_5
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/l;->a(Lcom/yandex/metrica/impl/bw;)V

    return-void
.end method

.method final b()Landroid/location/Location;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->c:Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->K()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/hw;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hw;->c()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/yandex/metrica/impl/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/hw;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/hw;->d()Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method
