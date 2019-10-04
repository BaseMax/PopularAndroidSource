.class public final Lc/c/a/e/d/h/e/a/a/j;
.super Ljava/lang/Object;
.source "VideoDownloadLocalDataSource.kt"

# interfaces
.implements Lb/c/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/h/e/a/a/k;->a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/c/a/c/a<",
        "TX;TY;>;"
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/e/d/h/e/a/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/e/d/h/e/a/a/j;

    invoke-direct {v0}, Lc/c/a/e/d/h/e/a/a/j;-><init>()V

    sput-object v0, Lc/c/a/e/d/h/e/a/a/j;->a:Lc/c/a/e/d/h/e/a/a/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;

    invoke-virtual {p0, p1}, Lc/c/a/e/d/h/e/a/a/j;->a(Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
