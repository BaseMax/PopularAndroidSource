.class public Lcom/yandex/metrica/impl/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ag;


# instance fields
.field private a:Landroid/location/Location;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Lcom/yandex/metrica/impl/bi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/o;->d:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/o;->e:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/e$a;",
            ")V"
        }
    .end annotation

    .line 176
    invoke-static {p0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/e$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static b(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/metrica/e$a;",
            ")V"
        }
    .end annotation

    .line 185
    invoke-static {p0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/yandex/metrica/impl/o;->h:Lcom/yandex/metrica/impl/bi;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/o;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/o;->a:Landroid/location/Location;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/e;)Lcom/yandex/metrica/e;
    .locals 5

    .line 101
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/o;->g:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 1114
    :cond_0
    iget-object v0, p1, Lcom/yandex/metrica/e;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/e;->a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    move-result-object v0

    .line 1115
    iget-object v1, p1, Lcom/yandex/metrica/e;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/yandex/metrica/e;->j:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/e$a;->a(Ljava/util/Map;Ljava/lang/Boolean;)Lcom/yandex/metrica/e$a;

    .line 1116
    iget-object v1, p1, Lcom/yandex/metrica/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->c(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    .line 1117
    iget-object v1, p1, Lcom/yandex/metrica/e;->preloadInfo:Lcom/yandex/metrica/PreloadInfo;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/e$a;

    .line 1118
    iget-object v1, p1, Lcom/yandex/metrica/e;->location:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(Landroid/location/Location;)Lcom/yandex/metrica/e$a;

    .line 1130
    iget-object v1, p1, Lcom/yandex/metrica/e;->d:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1131
    iget-object v1, p1, Lcom/yandex/metrica/e;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(Ljava/util/List;)Lcom/yandex/metrica/e$a;

    .line 1133
    :cond_2
    iget-object v1, p1, Lcom/yandex/metrica/e;->appVersion:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 1134
    iget-object v1, p1, Lcom/yandex/metrica/e;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    .line 1136
    :cond_4
    iget-object v1, p1, Lcom/yandex/metrica/e;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    .line 1137
    iget-object v1, p1, Lcom/yandex/metrica/e;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->d(I)Lcom/yandex/metrica/e$a;

    .line 1139
    :cond_6
    iget-object v1, p1, Lcom/yandex/metrica/e;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_8

    .line 1140
    iget-object v1, p1, Lcom/yandex/metrica/e;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->b(I)Lcom/yandex/metrica/e$a;

    .line 1142
    :cond_8
    iget-object v1, p1, Lcom/yandex/metrica/e;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_a

    .line 1143
    iget-object v1, p1, Lcom/yandex/metrica/e;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->c(I)Lcom/yandex/metrica/e$a;

    .line 1145
    :cond_a
    iget-object v1, p1, Lcom/yandex/metrica/e;->logs:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_c

    iget-object v1, p1, Lcom/yandex/metrica/e;->logs:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1146
    invoke-virtual {v0}, Lcom/yandex/metrica/e$a;->a()Lcom/yandex/metrica/e$a;

    .line 1148
    :cond_c
    iget-object v1, p1, Lcom/yandex/metrica/e;->sessionTimeout:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_e

    .line 1149
    iget-object v1, p1, Lcom/yandex/metrica/e;->sessionTimeout:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(I)Lcom/yandex/metrica/e$a;

    .line 1151
    :cond_e
    iget-object v1, p1, Lcom/yandex/metrica/e;->crashReporting:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_7

    :cond_f
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_10

    .line 1152
    iget-object v1, p1, Lcom/yandex/metrica/e;->crashReporting:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(Z)Lcom/yandex/metrica/e$a;

    .line 1154
    :cond_10
    iget-object v1, p1, Lcom/yandex/metrica/e;->nativeCrashReporting:Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_8

    :cond_11
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_12

    .line 1155
    iget-object v1, p1, Lcom/yandex/metrica/e;->nativeCrashReporting:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->b(Z)Lcom/yandex/metrica/e$a;

    .line 1157
    :cond_12
    iget-object v1, p1, Lcom/yandex/metrica/e;->locationTracking:Ljava/lang/Boolean;

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_9

    :cond_13
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_14

    .line 1158
    iget-object v1, p1, Lcom/yandex/metrica/e;->locationTracking:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->c(Z)Lcom/yandex/metrica/e$a;

    .line 1160
    :cond_14
    iget-object v1, p1, Lcom/yandex/metrica/e;->installedAppCollecting:Ljava/lang/Boolean;

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_a

    :cond_15
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_16

    .line 1161
    iget-object v1, p1, Lcom/yandex/metrica/e;->installedAppCollecting:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->d(Z)Lcom/yandex/metrica/e$a;

    .line 1163
    :cond_16
    iget-object v1, p1, Lcom/yandex/metrica/e;->c:Ljava/lang/String;

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_b

    :cond_17
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_18

    .line 1164
    iget-object v1, p1, Lcom/yandex/metrica/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->b(Ljava/lang/String;)Lcom/yandex/metrica/e$a;

    .line 1166
    :cond_18
    iget-object v1, p1, Lcom/yandex/metrica/e;->firstActivationAsUpdate:Ljava/lang/Boolean;

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_c

    :cond_19
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_1a

    .line 1167
    iget-object v1, p1, Lcom/yandex/metrica/e;->firstActivationAsUpdate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->f(Z)Lcom/yandex/metrica/e$a;

    .line 1169
    :cond_1a
    iget-object v1, p1, Lcom/yandex/metrica/e;->statisticsSending:Ljava/lang/Boolean;

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_d

    :cond_1b
    const/4 v1, 0x0

    :goto_d
    if-eqz v1, :cond_1c

    .line 1170
    iget-object v1, p1, Lcom/yandex/metrica/e;->statisticsSending:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->e(Z)Lcom/yandex/metrica/e$a;

    .line 1120
    :cond_1c
    iget-object v1, p0, Lcom/yandex/metrica/impl/o;->d:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/o;->a(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V

    .line 1121
    iget-object v1, p1, Lcom/yandex/metrica/e;->i:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/o;->a(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V

    .line 1122
    iget-object v1, p0, Lcom/yandex/metrica/impl/o;->e:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/o;->b(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V

    .line 1123
    iget-object v1, p1, Lcom/yandex/metrica/e;->h:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/yandex/metrica/impl/o;->b(Ljava/util/Map;Lcom/yandex/metrica/e$a;)V

    .line 15194
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/o;->b()Ljava/lang/Boolean;

    move-result-object v1

    .line 15195
    iget-object v4, p1, Lcom/yandex/metrica/e;->locationTracking:Ljava/lang/Boolean;

    if-nez v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_e

    :cond_1d
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_1f

    if-eqz v1, :cond_1e

    const/4 v4, 0x1

    goto :goto_f

    :cond_1e
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_1f

    .line 15196
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->c(Z)Lcom/yandex/metrica/e$a;

    .line 15198
    :cond_1f
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/o;->a()Landroid/location/Location;

    move-result-object v1

    .line 15199
    iget-object v4, p1, Lcom/yandex/metrica/e;->location:Landroid/location/Location;

    if-nez v4, :cond_20

    const/4 v4, 0x1

    goto :goto_10

    :cond_20
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_22

    if-eqz v1, :cond_21

    const/4 v4, 0x1

    goto :goto_11

    :cond_21
    const/4 v4, 0x0

    :goto_11
    if-eqz v4, :cond_22

    .line 15200
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/e$a;->a(Landroid/location/Location;)Lcom/yandex/metrica/e$a;

    .line 15202
    :cond_22
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/o;->c()Ljava/lang/Boolean;

    move-result-object v1

    .line 15203
    iget-object p1, p1, Lcom/yandex/metrica/e;->statisticsSending:Ljava/lang/Boolean;

    if-nez p1, :cond_23

    const/4 p1, 0x1

    goto :goto_12

    :cond_23
    const/4 p1, 0x0

    :goto_12
    if-eqz p1, :cond_25

    if-eqz v1, :cond_24

    const/4 p1, 0x1

    goto :goto_13

    :cond_24
    const/4 p1, 0x0

    :goto_13
    if-eqz p1, :cond_25

    .line 15204
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/e$a;->e(Z)Lcom/yandex/metrica/e$a;

    .line 107
    :cond_25
    iput-boolean v2, p0, Lcom/yandex/metrica/impl/o;->g:Z

    const/4 p1, 0x0

    .line 18091
    iput-object p1, p0, Lcom/yandex/metrica/impl/o;->a:Landroid/location/Location;

    .line 18092
    iput-object p1, p0, Lcom/yandex/metrica/impl/o;->b:Ljava/lang/Boolean;

    .line 18093
    iput-object p1, p0, Lcom/yandex/metrica/impl/o;->c:Ljava/lang/Boolean;

    .line 18094
    iget-object p1, p0, Lcom/yandex/metrica/impl/o;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 18095
    iget-object p1, p0, Lcom/yandex/metrica/impl/o;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 18097
    iput-boolean v3, p0, Lcom/yandex/metrica/impl/o;->f:Z

    .line 109
    invoke-virtual {v0}, Lcom/yandex/metrica/e$a;->b()Lcom/yandex/metrica/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/location/Location;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/yandex/metrica/impl/o;->a:Landroid/location/Location;

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/bi;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/yandex/metrica/impl/o;->h:Lcom/yandex/metrica/impl/bi;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 51
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/o;->b:Ljava/lang/Boolean;

    .line 52
    invoke-direct {p0}, Lcom/yandex/metrica/impl/o;->e()V

    return-void
.end method

.method public b()Ljava/lang/Boolean;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/yandex/metrica/impl/o;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/impl/o;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/o;->f:Z

    return v0
.end method

.method public setStatisticsSending(Z)V
    .locals 0

    .line 61
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/o;->c:Ljava/lang/Boolean;

    .line 62
    invoke-direct {p0}, Lcom/yandex/metrica/impl/o;->e()V

    return-void
.end method
