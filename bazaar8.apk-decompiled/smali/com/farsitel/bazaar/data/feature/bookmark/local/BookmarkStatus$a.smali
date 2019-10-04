.class public final Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus$a;
.super Ljava/lang/Object;
.source "BookmarkEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;
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
    invoke-direct {p0}, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    sget-object p1, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->BOOKMARK:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->REMOVE:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->BOOKMARK:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    :goto_0
    return-object p1
.end method
