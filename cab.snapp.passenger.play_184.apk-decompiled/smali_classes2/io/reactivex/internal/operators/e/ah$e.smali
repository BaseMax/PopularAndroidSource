.class final enum Lio/reactivex/internal/operators/e/ah$e;
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
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/operators/e/ah$e;",
        ">;",
        "Lio/reactivex/e/h<",
        "Lio/reactivex/ao;",
        "Lio/reactivex/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lio/reactivex/internal/operators/e/ah$e;

.field private static final synthetic a:[Lio/reactivex/internal/operators/e/ah$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 106
    new-instance v0, Lio/reactivex/internal/operators/e/ah$e;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/e/ah$e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/reactivex/internal/operators/e/ah$e;->INSTANCE:Lio/reactivex/internal/operators/e/ah$e;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/reactivex/internal/operators/e/ah$e;

    .line 104
    sget-object v1, Lio/reactivex/internal/operators/e/ah$e;->INSTANCE:Lio/reactivex/internal/operators/e/ah$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/internal/operators/e/ah$e;->a:[Lio/reactivex/internal/operators/e/ah$e;

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

    .line 105
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/operators/e/ah$e;
    .locals 1

    .line 104
    const-class v0, Lio/reactivex/internal/operators/e/ah$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/operators/e/ah$e;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/operators/e/ah$e;
    .locals 1

    .line 104
    sget-object v0, Lio/reactivex/internal/operators/e/ah$e;->a:[Lio/reactivex/internal/operators/e/ah$e;

    invoke-virtual {v0}, [Lio/reactivex/internal/operators/e/ah$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/e/ah$e;

    return-object v0
.end method


# virtual methods
.method public final apply(Lio/reactivex/ao;)Lio/reactivex/z;
    .locals 1

    .line 110
    new-instance v0, Lio/reactivex/internal/operators/e/av;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/e/av;-><init>(Lio/reactivex/ao;)V

    return-object v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    check-cast p1, Lio/reactivex/ao;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/e/ah$e;->apply(Lio/reactivex/ao;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method
