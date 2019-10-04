.class final enum Lio/reactivex/k/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/k/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/k/e$a;",
        ">;",
        "Lio/reactivex/o<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lio/reactivex/k/e$a;

.field private static final synthetic a:[Lio/reactivex/k/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 426
    new-instance v0, Lio/reactivex/k/e$a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lio/reactivex/k/e$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/reactivex/k/e$a;->INSTANCE:Lio/reactivex/k/e$a;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/reactivex/k/e$a;

    .line 425
    sget-object v1, Lio/reactivex/k/e$a;->INSTANCE:Lio/reactivex/k/e$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/k/e$a;->a:[Lio/reactivex/k/e$a;

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

    .line 425
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/k/e$a;
    .locals 1

    .line 425
    const-class v0, Lio/reactivex/k/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/k/e$a;

    return-object p0
.end method

.method public static values()[Lio/reactivex/k/e$a;
    .locals 1

    .line 425
    sget-object v0, Lio/reactivex/k/e$a;->a:[Lio/reactivex/k/e$a;

    invoke-virtual {v0}, [Lio/reactivex/k/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/k/e$a;

    return-object v0
.end method


# virtual methods
.method public final onComplete()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final onSubscribe(Lorg/b/d;)V
    .locals 0

    return-void
.end method
