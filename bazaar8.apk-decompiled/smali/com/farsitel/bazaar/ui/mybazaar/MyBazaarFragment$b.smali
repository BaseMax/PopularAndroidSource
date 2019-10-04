.class public final Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$b;
.super Lb/o/a/z;
.source "MyBazaarFragment.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongConstant"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/util/List;ZLb/o/a/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lb/o/a/n;",
            ")V"
        }
    .end annotation

    const-string v0, "tabTitles"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p3, v0}, Lb/o/a/z;-><init>(Lb/o/a/n;I)V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$b;->g:Ljava/util/List;

    iput-boolean p2, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$b;->h:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic a(I)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$b;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public c(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->ja:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$a;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$b;->h:Z

    invoke-static {v0, p1, v1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$a;->a(Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$a;IZ)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Lc/c/a/n/r/t;

    invoke-direct {p1}, Lc/c/a/n/r/t;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Wrong index for my bazaar pager adapter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Lc/c/a/n/r/c;

    invoke-direct {p1}, Lc/c/a/n/r/c;-><init>()V

    :goto_0
    return-object p1
.end method
