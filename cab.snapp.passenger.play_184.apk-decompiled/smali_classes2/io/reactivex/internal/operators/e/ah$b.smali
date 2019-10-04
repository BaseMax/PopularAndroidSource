.class final enum Lio/reactivex/internal/operators/e/ah$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/e/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/operators/e/ah$b;",
        ">;",
        "Lio/reactivex/e/h<",
        "Lio/reactivex/ao;",
        "Lorg/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lio/reactivex/internal/operators/e/ah$b;

.field private static final synthetic a:[Lio/reactivex/internal/operators/e/ah$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lio/reactivex/internal/operators/e/ah$b;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/e/ah$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/reactivex/internal/operators/e/ah$b;->INSTANCE:Lio/reactivex/internal/operators/e/ah$b;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/reactivex/internal/operators/e/ah$b;

    .line 48
    sget-object v1, Lio/reactivex/internal/operators/e/ah$b;->INSTANCE:Lio/reactivex/internal/operators/e/ah$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/internal/operators/e/ah$b;->a:[Lio/reactivex/internal/operators/e/ah$b;

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

    .line 49
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/operators/e/ah$b;
    .locals 1

    .line 48
    const-class v0, Lio/reactivex/internal/operators/e/ah$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/operators/e/ah$b;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/operators/e/ah$b;
    .locals 1

    .line 48
    sget-object v0, Lio/reactivex/internal/operators/e/ah$b;->a:[Lio/reactivex/internal/operators/e/ah$b;

    invoke-virtual {v0}, [Lio/reactivex/internal/operators/e/ah$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/e/ah$b;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    check-cast p1, Lio/reactivex/ao;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/e/ah$b;->apply(Lio/reactivex/ao;)Lorg/b/b;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lio/reactivex/ao;)Lorg/b/b;
    .locals 1

    .line 54
    new-instance v0, Lio/reactivex/internal/operators/e/au;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/e/au;-><init>(Lio/reactivex/ao;)V

    return-object v0
.end method
