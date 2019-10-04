.class public Lcom/a/a/a;
.super Lio/fabric/sdk/android/i;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/i<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/fabric/sdk/android/j;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Crashlytics"


# instance fields
.field public final answers:Lcom/a/a/a/b;

.field public final beta:Lcom/a/a/b/c;

.field public final core:Lcom/a/a/c/j;

.field public final kits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lio/fabric/sdk/android/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/a/a/a/b;

    invoke-direct {v0}, Lcom/a/a/a/b;-><init>()V

    new-instance v1, Lcom/a/a/b/c;

    invoke-direct {v1}, Lcom/a/a/b/c;-><init>()V

    new-instance v2, Lcom/a/a/c/j;

    invoke-direct {v2}, Lcom/a/a/c/j;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/a/a/a;-><init>(Lcom/a/a/a/b;Lcom/a/a/b/c;Lcom/a/a/c/j;)V

    return-void
.end method

.method constructor <init>(Lcom/a/a/a/b;Lcom/a/a/b/c;Lcom/a/a/c/j;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lio/fabric/sdk/android/i;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/a/a/a;->answers:Lcom/a/a/a/b;

    .line 34
    iput-object p2, p0, Lcom/a/a/a;->beta:Lcom/a/a/b/c;

    .line 35
    iput-object p3, p0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/fabric/sdk/android/i;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 37
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/a;->kits:Ljava/util/Collection;

    return-void
.end method

.method private static a()V
    .locals 2

    .line 371
    invoke-static {}, Lcom/a/a/a;->getInstance()Lcom/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 372
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/a/a/a;
    .locals 1

    .line 188
    const-class v0, Lcom/a/a/a;

    invoke-static {v0}, Lio/fabric/sdk/android/c;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/i;

    move-result-object v0

    check-cast v0, Lcom/a/a/a;

    return-object v0
.end method

.method public static getPinningInfoProvider()Lcom/a/a/c/ab;
    .locals 1

    .line 198
    invoke-static {}, Lcom/a/a/a;->a()V

    .line 199
    invoke-static {}, Lcom/a/a/a;->getInstance()Lcom/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    invoke-virtual {v0}, Lcom/a/a/c/j;->getPinningInfoProvider()Lcom/a/a/c/ab;

    move-result-object v0

    return-object v0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 230
    invoke-static {}, Lcom/a/a/a;->a()V

    .line 231
    invoke-static {}, Lcom/a/a/a;->getInstance()Lcom/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    invoke-virtual {v0, p0, p1, p2}, Lcom/a/a/c/j;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 218
    invoke-static {}, Lcom/a/a/a;->a()V

    .line 219
    invoke-static {}, Lcom/a/a/a;->getInstance()Lcom/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    invoke-virtual {v0, p0}, Lcom/a/a/c/j;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static logException(Ljava/lang/Throwable;)V
    .locals 1

    .line 207
    invoke-static {}, Lcom/a/a/a;->a()V

    .line 208
    invoke-static {}, Lcom/a/a/a;->getInstance()Lcom/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    invoke-virtual {v0, p0}, Lcom/a/a/c/j;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setBool(Ljava/lang/String;Z)V
    .locals 1

    .line 275
    invoke-static {}, Lcom/a/a/a;->a()V

    .line 276
    invoke-static {}, Lcom/a/a/a;->getInstance()Lcom/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    invoke-virtual {v0, p0, p1}, Lcom/a/a/c/j;->setBool(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setDouble(Ljava/lang/String;D)V
    .locals 1

    .line 284
    invoke-static {}, Lcom/a/a/a;->a()V

    .line 285
    invoke-static {}, Lcom/a/a/a;->getInstance()Lcom/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    invoke-virtual {v0, p0, p1, p2}, Lcom/a/a/c/j;->setDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public static setFloat(Ljava/lang/String;F)V
    .locals 1

    .line 293
    invoke-static {}, Lcom/a/a/a;->a()V

    .line 294
    invoke-static {}, Lcom/a/a/a;->getInstance()Lcom/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    invoke-virtual {v0, p0, p1}, Lcom/a/a/c/j;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public static setInt(Ljava/lang/String;I)V
    .locals 1

    .line 302
    invoke-static {}, Lcom/a/a/a;->a()V

    .line 303
    invoke-static {}, Lcom/a/a/a;->getInstance()Lcom/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    invoke-virtual {v0, p0, p1}, Lcom/a/a/c/j;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setLong(Ljava/lang/String;J)V
    .locals 1

    .line 311
    invoke-static {}, Lcom/a/a/a;->a()V

    .line 312
    invoke-static {}, Lcom/a/a/a;->getInstance()Lcom/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    invoke-virtual {v0, p0, p1, p2}, Lcom/a/a/c/j;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static setPinningInfoProvider(Lcom/a/a/c/ab;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p0

    const-string v0, "Crashlytics"

    const-string v1, "Use of Crashlytics.setPinningInfoProvider is deprecated"

    invoke-interface {p0, v0, v1}, Lio/fabric/sdk/android/l;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 266
    invoke-static {}, Lcom/a/a/a;->a()V

    .line 267
    invoke-static {}, Lcom/a/a/a;->getInstance()Lcom/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    invoke-virtual {v0, p0, p1}, Lcom/a/a/c/j;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserEmail(Ljava/lang/String;)V
    .locals 1

    .line 257
    invoke-static {}, Lcom/a/a/a;->a()V

    .line 258
    invoke-static {}, Lcom/a/a/a;->getInstance()Lcom/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    invoke-virtual {v0, p0}, Lcom/a/a/c/j;->setUserEmail(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .locals 1

    .line 239
    invoke-static {}, Lcom/a/a/a;->a()V

    .line 240
    invoke-static {}, Lcom/a/a/a;->getInstance()Lcom/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    invoke-virtual {v0, p0}, Lcom/a/a/c/j;->setUserIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserName(Ljava/lang/String;)V
    .locals 1

    .line 248
    invoke-static {}, Lcom/a/a/a;->a()V

    .line 249
    invoke-static {}, Lcom/a/a/a;->getInstance()Lcom/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    invoke-virtual {v0, p0}, Lcom/a/a/c/j;->setUserName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public crash()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    invoke-virtual {v0}, Lcom/a/a/c/j;->crash()V

    return-void
.end method

.method public final bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDebugMode()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Crashlytics"

    const-string v2, "Use of Crashlytics.getDebugMode is deprecated."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/l;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/a/a/a;->getFabric()Lio/fabric/sdk/android/c;

    invoke-static {}, Lio/fabric/sdk/android/c;->isDebuggable()Z

    move-result v0

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "com.crashlytics.sdk.android:crashlytics"

    return-object v0
.end method

.method public getKits()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lio/fabric/sdk/android/i;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/a/a/a;->kits:Ljava/util/Collection;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.8.dev"

    return-object v0
.end method

.method public setDebugMode(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 349
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    const-string v0, "Crashlytics"

    const-string v1, "Use of Crashlytics.setDebugMode is deprecated."

    invoke-interface {p1, v0, v1}, Lio/fabric/sdk/android/l;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setListener(Lcom/a/a/c/l;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    invoke-virtual {v0, p1}, Lcom/a/a/c/j;->setListener(Lcom/a/a/c/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public verifyPinning(Ljava/net/URL;)Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/a/a/a;->core:Lcom/a/a/c/j;

    invoke-virtual {v0, p1}, Lcom/a/a/c/j;->verifyPinning(Ljava/net/URL;)Z

    move-result p1

    return p1
.end method
