.class public final Lc/c/a/e/d/p/a/c;
.super Ljava/lang/Object;
.source "ReportRequest.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.reportAppRequest"
.end annotation


# instance fields
.field public final comment:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "description"
    .end annotation
.end field

.field public final language:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "language"
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "package_name"
    .end annotation
.end field

.field public final reason:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "reason"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/p/a/c;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/e/d/p/a/c;->reason:Ljava/lang/String;

    iput-object p3, p0, Lc/c/a/e/d/p/a/c;->comment:Ljava/lang/String;

    iput-object p4, p0, Lc/c/a/e/d/p/a/c;->language:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILh/f/b/f;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const-string p4, "fa"

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lc/c/a/e/d/p/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
