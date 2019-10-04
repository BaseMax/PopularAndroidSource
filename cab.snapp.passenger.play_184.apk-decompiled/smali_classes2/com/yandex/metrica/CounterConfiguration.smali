.class public Lcom/yandex/metrica/CounterConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/CounterConfiguration$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yandex/metrica/CounterConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/ContentValues;

.field private b:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 431
    new-instance v0, Lcom/yandex/metrica/CounterConfiguration$1;

    invoke-direct {v0}, Lcom/yandex/metrica/CounterConfiguration$1;-><init>()V

    sput-object v0, Lcom/yandex/metrica/CounterConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->b:Landroid/os/ResultReceiver;

    .line 115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentValues;Landroid/os/ResultReceiver;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->b:Landroid/os/ResultReceiver;

    .line 110
    iput-object p1, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 111
    iput-object p2, p0, Lcom/yandex/metrica/CounterConfiguration;->b:Landroid/os/ResultReceiver;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentValues;Landroid/os/ResultReceiver;B)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/CounterConfiguration;-><init>(Landroid/content/ContentValues;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/c;)V
    .locals 2

    .line 137
    invoke-direct {p0}, Lcom/yandex/metrica/CounterConfiguration;-><init>()V

    .line 138
    iget-object v0, p1, Lcom/yandex/metrica/c;->apiKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->c(Ljava/lang/String;)V

    .line 139
    iget-object v0, p1, Lcom/yandex/metrica/c;->sessionTimeout:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/Integer;)V

    .line 140
    iget-object v0, p1, Lcom/yandex/metrica/c;->a:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->b(Ljava/lang/Integer;)V

    .line 141
    iget-object v0, p1, Lcom/yandex/metrica/c;->b:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->c(Ljava/lang/Integer;)V

    .line 142
    iget-object v0, p1, Lcom/yandex/metrica/c;->logs:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 11196
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->c(Z)V

    .line 143
    :cond_1
    iget-object p1, p1, Lcom/yandex/metrica/c;->statisticsSending:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/e;)V
    .locals 5

    .line 119
    invoke-direct {p0}, Lcom/yandex/metrica/CounterConfiguration;-><init>()V

    .line 120
    iget-object v0, p1, Lcom/yandex/metrica/e;->apiKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->c(Ljava/lang/String;)V

    .line 121
    iget-object v0, p1, Lcom/yandex/metrica/e;->sessionTimeout:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/Integer;)V

    .line 1159
    iget-object v0, p1, Lcom/yandex/metrica/e;->location:Landroid/location/Location;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1160
    iget-object v0, p1, Lcom/yandex/metrica/e;->location:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->a(Landroid/location/Location;)V

    .line 2165
    :cond_1
    iget-object v0, p1, Lcom/yandex/metrica/e;->locationTracking:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 2166
    iget-object v0, p1, Lcom/yandex/metrica/e;->locationTracking:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->a(Z)V

    .line 3171
    :cond_3
    iget-object v0, p1, Lcom/yandex/metrica/e;->installedAppCollecting:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 3172
    iget-object v0, p1, Lcom/yandex/metrica/e;->installedAppCollecting:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->b(Z)V

    .line 4177
    :cond_5
    iget-object v0, p1, Lcom/yandex/metrica/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    .line 4178
    iget-object v0, p1, Lcom/yandex/metrica/e;->a:Ljava/lang/String;

    .line 5276
    iget-object v3, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v0, 0x0

    :cond_7
    const-string v4, "CFG_DEVICE_SIZE_TYPE"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_8
    iget-object v0, p1, Lcom/yandex/metrica/e;->f:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->b(Ljava/lang/Integer;)V

    .line 127
    iget-object v0, p1, Lcom/yandex/metrica/e;->g:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->c(Ljava/lang/Integer;)V

    .line 6201
    iget-object v0, p1, Lcom/yandex/metrica/e;->appVersion:Ljava/lang/String;

    .line 6202
    invoke-static {v0}, Lcom/yandex/metrica/impl/bt;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 6203
    iget-object v0, p1, Lcom/yandex/metrica/e;->appVersion:Ljava/lang/String;

    .line 6311
    iget-object v3, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v4, "CFG_APP_VERSION"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7208
    :cond_9
    iget-object v0, p1, Lcom/yandex/metrica/e;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_b

    .line 7209
    iget-object v0, p1, Lcom/yandex/metrica/e;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->d(I)V

    .line 8214
    :cond_b
    iget-object v0, p1, Lcom/yandex/metrica/e;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_d

    .line 8215
    iget-object v0, p1, Lcom/yandex/metrica/e;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->d(Z)V

    .line 9220
    :cond_d
    iget-object v0, p1, Lcom/yandex/metrica/e;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_f

    .line 9221
    iget-object v0, p1, Lcom/yandex/metrica/e;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->e(Z)V

    .line 10226
    :cond_f
    iget-object v0, p1, Lcom/yandex/metrica/e;->firstActivationAsUpdate:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_11

    .line 10227
    iget-object v0, p1, Lcom/yandex/metrica/e;->firstActivationAsUpdate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 10387
    iget-object v1, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "CFG_IS_FIRST_ACTIVATION_AS_UPDATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 133
    :cond_11
    iget-object p1, p1, Lcom/yandex/metrica/e;->statisticsSending:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->f(Z)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->c(I)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 586
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(I)V

    :cond_1
    return-void
.end method

.method public static c(Landroid/os/Bundle;)Lcom/yandex/metrica/CounterConfiguration;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "COUNTER_CFG_OBJ"

    .line 568
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/CounterConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    return-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 576
    new-instance v0, Lcom/yandex/metrica/CounterConfiguration;

    invoke-direct {v0}, Lcom/yandex/metrica/CounterConfiguration;-><init>()V

    .line 579
    :cond_1
    invoke-virtual {v0, p0}, Lcom/yandex/metrica/CounterConfiguration;->b(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private c(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->b(I)V

    :cond_1
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private h(Z)V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "CFG_MAIN_REPORTER"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/ResultReceiver;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->b:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "CFG_DISPATCH_PERIOD"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/hw;->a(Landroid/location/Location;)[B

    move-result-object p1

    const-string v1, "CFG_MANUAL_LOCATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "COUNTER_CFG_OBJ"

    .line 477
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public a(Landroid/os/ResultReceiver;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/yandex/metrica/CounterConfiguration;->b:Landroid/os/ResultReceiver;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_API_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "CFG_LOCATION_TRACKING"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public b()Ljava/lang/Integer;
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_DISPATCH_PERIOD"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    if-gtz p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "CFG_MAX_REPORTS_COUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "CFG_DISPATCH_PERIOD"

    .line 531
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->a(I)V

    :cond_1
    const-string v0, "CFG_SESSION_TIMEOUT"

    .line 535
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->c(I)V

    :cond_2
    const-string v0, "CFG_MAX_REPORTS_COUNT"

    .line 539
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 540
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->b(I)V

    :cond_3
    const-string v0, "CFG_API_KEY"

    .line 543
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 544
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 545
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_UUID"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/yandex/metrica/CounterConfiguration$a;->b:Lcom/yandex/metrica/CounterConfiguration$a;

    :goto_0
    iget p1, p1, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    .line 329
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "CFG_COLLECT_INSTALLED_APPS"

    .line 328
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public c()Ljava/lang/Integer;
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_MAX_REPORTS_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "CFG_SESSION_TIMEOUT"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "CFG_IS_LOG_ENABLED"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public d()Ljava/lang/Integer;
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_SESSION_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CFG_APP_VERSION_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "CFG_AUTO_PRELOAD_INFO_DETECTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_DEVICE_SIZE_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Z)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "CFG_PERMISSIONS_COLLECTING"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_API_KEY"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Z)V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "CFG_STATISTICS_SENDING"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public g()Ljava/lang/Boolean;
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_LOCATION_TRACKING"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 0

    .line 448
    invoke-direct {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->h(Z)V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_APP_VERSION"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_APP_VERSION_CODE"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/yandex/metrica/CounterConfiguration$a;
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_COLLECT_INSTALLED_APPS"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16551
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 16552
    check-cast v0, Ljava/lang/Integer;

    .line 16553
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/yandex/metrica/CounterConfiguration$a;->a(I)Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    return-object v0

    .line 16555
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 16556
    check-cast v0, Ljava/lang/Boolean;

    .line 16557
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    return-object v0

    :cond_1
    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->b:Lcom/yandex/metrica/CounterConfiguration$a;

    return-object v0

    .line 16560
    :cond_2
    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    return-object v0
.end method

.method public k()Ljava/lang/Boolean;
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_IS_LOG_ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public l()Landroid/location/Location;
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_MANUAL_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 364
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/hw;->a([B)Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Ljava/lang/Boolean;
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_AUTO_PRELOAD_INFO_DETECTION"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/Boolean;
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_IS_FIRST_ACTIVATION_AS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/Boolean;
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_STATISTICS_SENDING"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 3

    .line 17461
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "CFG_COMMUTATION_REPORTER"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    .line 457
    invoke-direct {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->h(Z)V

    return-void
.end method

.method public q()Z
    .locals 2

    const-string v0, "CFG_MAIN_REPORTER"

    const/4 v1, 0x1

    .line 465
    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 2

    const-string v0, "CFG_COMMUTATION_REPORTER"

    const/4 v1, 0x0

    .line 469
    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CounterConfiguration{mParamsMapping="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 427
    iget-object p2, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 428
    iget-object p2, p0, Lcom/yandex/metrica/CounterConfiguration;->b:Landroid/os/ResultReceiver;

    .line 17213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17214
    invoke-virtual {p2, v1, v0}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 17215
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 17216
    sget-object p2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/ResultReceiver;

    .line 17217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 428
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
