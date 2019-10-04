.class public final Lcom/farsitel/bazaar/work/BookmarkWorker$a;
.super Ljava/lang/Object;
.source "BookmarkWorker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/work/BookmarkWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/farsitel/bazaar/work/BookmarkWorker$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lb/H/d;
    .locals 3

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appName"

    invoke-static {p2, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "appIconURL"

    invoke-static {p3, v2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lb/H/d$a;

    invoke-direct {v2}, Lb/H/d$a;-><init>()V

    .line 2
    invoke-virtual {v2, v0, p1}, Lb/H/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/H/d$a;

    .line 3
    invoke-virtual {v2, v1, p2}, Lb/H/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/H/d$a;

    const-string p1, "iconUrl"

    .line 4
    invoke-virtual {v2, p1, p3}, Lb/H/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/H/d$a;

    const-string p1, "price"

    .line 5
    invoke-virtual {v2, p1, p4}, Lb/H/d$a;->a(Ljava/lang/String;I)Lb/H/d$a;

    const-string p1, "priceStirng"

    .line 6
    invoke-virtual {v2, p1, p5}, Lb/H/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/H/d$a;

    const-string p1, "bookmarked"

    .line 7
    invoke-virtual {v2, p1, p6}, Lb/H/d$a;->a(Ljava/lang/String;Z)Lb/H/d$a;

    .line 8
    invoke-virtual {v2}, Lb/H/d$a;->a()Lb/H/d;

    move-result-object p1

    const-string p2, "Data.Builder()\n         \u2026\n                .build()"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
