.class final enum Lio/reactivex/observers/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/observers/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/observers/e$a;",
        ">;",
        "Lio/reactivex/ag<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lio/reactivex/observers/e$a;

.field private static final synthetic a:[Lio/reactivex/observers/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 355
    new-instance v0, Lio/reactivex/observers/e$a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lio/reactivex/observers/e$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/reactivex/observers/e$a;->INSTANCE:Lio/reactivex/observers/e$a;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/reactivex/observers/e$a;

    .line 354
    sget-object v1, Lio/reactivex/observers/e$a;->INSTANCE:Lio/reactivex/observers/e$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/observers/e$a;->a:[Lio/reactivex/observers/e$a;

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

    .line 354
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/observers/e$a;
    .locals 1

    .line 354
    const-class v0, Lio/reactivex/observers/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/observers/e$a;

    return-object p0
.end method

.method public static values()[Lio/reactivex/observers/e$a;
    .locals 1

    .line 354
    sget-object v0, Lio/reactivex/observers/e$a;->a:[Lio/reactivex/observers/e$a;

    invoke-virtual {v0}, [Lio/reactivex/observers/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/observers/e$a;

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

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 0

    return-void
.end method
