.class public final Lc/c/a/n/w/k;
.super Ljava/lang/Object;
.source "SearchFragment.kt"

# interfaces
.implements Lc/c/a/n/w/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/search/SearchFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/search/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/search/SearchFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/w/k;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;)V
    .locals 1

    const-string v0, "searchHistoryItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/w/k;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->e(Lcom/farsitel/bazaar/ui/search/SearchFragment;)Lc/c/a/n/w/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/c/a/n/w/c;->a(Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/w/k;->a:Lcom/farsitel/bazaar/ui/search/SearchFragment;

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/search/SearchFragment;->a(Lcom/farsitel/bazaar/ui/search/SearchFragment;Lcom/farsitel/bazaar/ui/search/SearchHistoryItem;)V

    return-void
.end method
