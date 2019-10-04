.class public final Lc/c/a/n/b/F$b;
.super Ljava/lang/Object;
.source "MoreDescriptionFragmentDirections.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/n/b/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/c/a/n/b/F$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;Ljava/lang/String;)Lb/w/p;
    .locals 1

    const-string v0, "toolbarInfo"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageDesc"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/c/a/n/b/F$a;

    invoke-direct {v0, p1, p2}, Lc/c/a/n/b/F$a;-><init>(Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;Ljava/lang/String;)V

    return-object v0
.end method
