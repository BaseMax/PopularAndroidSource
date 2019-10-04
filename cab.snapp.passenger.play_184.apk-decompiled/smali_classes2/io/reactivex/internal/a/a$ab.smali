.class final enum Lio/reactivex/internal/a/a$ab;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/a/a$ab;",
        ">;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lio/reactivex/internal/a/a$ab;

.field private static final synthetic a:[Lio/reactivex/internal/a/a$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 482
    new-instance v0, Lio/reactivex/internal/a/a$ab;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lio/reactivex/internal/a/a$ab;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/reactivex/internal/a/a$ab;->INSTANCE:Lio/reactivex/internal/a/a$ab;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/reactivex/internal/a/a$ab;

    .line 481
    sget-object v1, Lio/reactivex/internal/a/a$ab;->INSTANCE:Lio/reactivex/internal/a/a$ab;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/internal/a/a$ab;->a:[Lio/reactivex/internal/a/a$ab;

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

    .line 481
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/a/a$ab;
    .locals 1

    .line 481
    const-class v0, Lio/reactivex/internal/a/a$ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/a/a$ab;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/a/a$ab;
    .locals 1

    .line 481
    sget-object v0, Lio/reactivex/internal/a/a$ab;->a:[Lio/reactivex/internal/a/a$ab;

    invoke-virtual {v0}, [Lio/reactivex/internal/a/a$ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/a/a$ab;

    return-object v0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 487
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
