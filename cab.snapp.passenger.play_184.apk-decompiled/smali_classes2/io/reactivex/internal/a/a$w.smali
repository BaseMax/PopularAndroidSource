.class final enum Lio/reactivex/internal/a/a$w;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/a/a$w;",
        ">;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Set<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lio/reactivex/internal/a/a$w;

.field private static final synthetic a:[Lio/reactivex/internal/a/a$w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 272
    new-instance v0, Lio/reactivex/internal/a/a$w;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lio/reactivex/internal/a/a$w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/reactivex/internal/a/a$w;->INSTANCE:Lio/reactivex/internal/a/a$w;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/reactivex/internal/a/a$w;

    .line 271
    sget-object v1, Lio/reactivex/internal/a/a$w;->INSTANCE:Lio/reactivex/internal/a/a$w;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/internal/a/a$w;->a:[Lio/reactivex/internal/a/a$w;

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

    .line 271
    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/a/a$w;
    .locals 1

    .line 271
    const-class v0, Lio/reactivex/internal/a/a$w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/a/a$w;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/a/a$w;
    .locals 1

    .line 271
    sget-object v0, Lio/reactivex/internal/a/a$w;->a:[Lio/reactivex/internal/a/a$w;

    invoke-virtual {v0}, [Lio/reactivex/internal/a/a$w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/a/a$w;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lio/reactivex/internal/a/a$w;->call()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method
