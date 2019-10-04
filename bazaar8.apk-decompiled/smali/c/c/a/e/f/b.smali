.class public final Lc/c/a/e/f/b;
.super Ljava/lang/Object;
.source "BookmarkStatusMapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/f/b$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/e/f/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/e/f/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/e/f/b$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/e/f/b;->a:Lc/c/a/e/f/b$a;

    return-void
.end method

.method public static final a(I)Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;
    .locals 1

    sget-object v0, Lc/c/a/e/f/b;->a:Lc/c/a/e/f/b$a;

    invoke-virtual {v0, p0}, Lc/c/a/e/f/b$a;->a(I)Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lc/c/a/e/f/b;->a:Lc/c/a/e/f/b$a;

    invoke-virtual {v0, p0}, Lc/c/a/e/f/b$a;->a(Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
