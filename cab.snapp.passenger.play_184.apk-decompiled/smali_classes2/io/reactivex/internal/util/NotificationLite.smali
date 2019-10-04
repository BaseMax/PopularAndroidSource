.class public final enum Lio/reactivex/internal/util/NotificationLite;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/util/NotificationLite$a;,
        Lio/reactivex/internal/util/NotificationLite$c;,
        Lio/reactivex/internal/util/NotificationLite$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/util/NotificationLite;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/util/NotificationLite;

.field public static final enum COMPLETE:Lio/reactivex/internal/util/NotificationLite;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lio/reactivex/internal/util/NotificationLite;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/NotificationLite;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/reactivex/internal/util/NotificationLite;

    .line 26
    sget-object v1, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/internal/util/NotificationLite;->$VALUES:[Lio/reactivex/internal/util/NotificationLite;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static accept(Ljava/lang/Object;Lio/reactivex/ag;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lio/reactivex/ag<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 238
    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 239
    invoke-interface {p1}, Lio/reactivex/ag;->onComplete()V

    return v1

    .line 242
    :cond_0
    instance-of v0, p0, Lio/reactivex/internal/util/NotificationLite$b;

    if-eqz v0, :cond_1

    .line 243
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$b;

    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$b;->a:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 246
    :cond_1
    invoke-interface {p1, p0}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static accept(Ljava/lang/Object;Lorg/b/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lorg/b/c<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 216
    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 217
    invoke-interface {p1}, Lorg/b/c;->onComplete()V

    return v1

    .line 220
    :cond_0
    instance-of v0, p0, Lio/reactivex/internal/util/NotificationLite$b;

    if-eqz v0, :cond_1

    .line 221
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$b;

    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$b;->a:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 224
    :cond_1
    invoke-interface {p1, p0}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static acceptFull(Ljava/lang/Object;Lio/reactivex/ag;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lio/reactivex/ag<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 286
    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 287
    invoke-interface {p1}, Lio/reactivex/ag;->onComplete()V

    return v1

    .line 290
    :cond_0
    instance-of v0, p0, Lio/reactivex/internal/util/NotificationLite$b;

    if-eqz v0, :cond_1

    .line 291
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$b;

    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$b;->a:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 294
    :cond_1
    instance-of v0, p0, Lio/reactivex/internal/util/NotificationLite$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 295
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$a;

    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$a;->a:Lio/reactivex/b/c;

    invoke-interface {p1, p0}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    return v1

    .line 298
    :cond_2
    invoke-interface {p1, p0}, Lio/reactivex/ag;->onNext(Ljava/lang/Object;)V

    return v1
.end method

.method public static acceptFull(Ljava/lang/Object;Lorg/b/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lorg/b/c<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 260
    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 261
    invoke-interface {p1}, Lorg/b/c;->onComplete()V

    return v1

    .line 264
    :cond_0
    instance-of v0, p0, Lio/reactivex/internal/util/NotificationLite$b;

    if-eqz v0, :cond_1

    .line 265
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$b;

    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$b;->a:Ljava/lang/Throwable;

    invoke-interface {p1, p0}, Lorg/b/c;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 268
    :cond_1
    instance-of v0, p0, Lio/reactivex/internal/util/NotificationLite$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 269
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$c;

    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$c;->a:Lorg/b/d;

    invoke-interface {p1, p0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    return v1

    .line 272
    :cond_2
    invoke-interface {p1, p0}, Lorg/b/c;->onNext(Ljava/lang/Object;)V

    return v1
.end method

.method public static complete()Ljava/lang/Object;
    .locals 1

    .line 111
    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    return-object v0
.end method

.method public static disposable(Lio/reactivex/b/c;)Ljava/lang/Object;
    .locals 1

    .line 138
    new-instance v0, Lio/reactivex/internal/util/NotificationLite$a;

    invoke-direct {v0, p0}, Lio/reactivex/internal/util/NotificationLite$a;-><init>(Lio/reactivex/b/c;)V

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    .line 120
    new-instance v0, Lio/reactivex/internal/util/NotificationLite$b;

    invoke-direct {v0, p0}, Lio/reactivex/internal/util/NotificationLite$b;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getDisposable(Ljava/lang/Object;)Lio/reactivex/b/c;
    .locals 0

    .line 202
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$a;

    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$a;->a:Lio/reactivex/b/c;

    return-object p0
.end method

.method public static getError(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    .line 189
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$b;

    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$b;->a:Ljava/lang/Throwable;

    return-object p0
.end method

.method public static getSubscription(Ljava/lang/Object;)Lorg/b/d;
    .locals 0

    .line 198
    check-cast p0, Lio/reactivex/internal/util/NotificationLite$c;

    iget-object p0, p0, Lio/reactivex/internal/util/NotificationLite$c;->a:Lorg/b/d;

    return-object p0
.end method

.method public static getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p0
.end method

.method public static isComplete(Ljava/lang/Object;)Z
    .locals 1

    .line 147
    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/internal/util/NotificationLite;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDisposable(Ljava/lang/Object;)Z
    .locals 0

    .line 169
    instance-of p0, p0, Lio/reactivex/internal/util/NotificationLite$a;

    return p0
.end method

.method public static isError(Ljava/lang/Object;)Z
    .locals 0

    .line 156
    instance-of p0, p0, Lio/reactivex/internal/util/NotificationLite$b;

    return p0
.end method

.method public static isSubscription(Ljava/lang/Object;)Z
    .locals 0

    .line 165
    instance-of p0, p0, Lio/reactivex/internal/util/NotificationLite$c;

    return p0
.end method

.method public static next(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p0
.end method

.method public static subscription(Lorg/b/d;)Ljava/lang/Object;
    .locals 1

    .line 129
    new-instance v0, Lio/reactivex/internal/util/NotificationLite$c;

    invoke-direct {v0, p0}, Lio/reactivex/internal/util/NotificationLite$c;-><init>(Lorg/b/d;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/util/NotificationLite;
    .locals 1

    .line 26
    const-class v0, Lio/reactivex/internal/util/NotificationLite;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/util/NotificationLite;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/util/NotificationLite;
    .locals 1

    .line 26
    sget-object v0, Lio/reactivex/internal/util/NotificationLite;->$VALUES:[Lio/reactivex/internal/util/NotificationLite;

    invoke-virtual {v0}, [Lio/reactivex/internal/util/NotificationLite;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/util/NotificationLite;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NotificationLite.Complete"

    return-object v0
.end method
