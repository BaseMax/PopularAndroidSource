.class public Lf/a/a/e/b/u;
.super Ljava/lang/Object;
.source "ListInflater.java"

# interfaces
.implements Lf/a/a/c/b/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/v;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/b/v;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/u;->a:Lf/a/a/e/b/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lf/a/a/e/b/u;->a:Lf/a/a/e/b/v;

    iget-object v1, v0, Lf/a/a/e/b/v;->b:Lf/a/a/g/e/b;

    iget-object v0, v0, Lf/a/a/e/b/v;->c:Lf/a/a/g/e/c;

    invoke-virtual {v1, v0}, Lf/a/a/g/e/b;->a(Lf/a/a/e/b/n;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .line 14
    iget-object p1, p0, Lf/a/a/e/b/u;->a:Lf/a/a/e/b/v;

    iget-object p1, p1, Lf/a/a/e/b/v;->a:Lf/a/a/e/g;

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/a/a/e/b/u;->a:Lf/a/a/e/b/v;

    iget-object p1, p1, Lf/a/a/e/b/v;->a:Lf/a/a/e/g;

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/InlineActivity;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lf/a/a/e/b/u;->a:Lf/a/a/e/b/v;

    iget-object p2, p1, Lf/a/a/e/b/v;->b:Lf/a/a/g/e/b;

    iget-object p1, p1, Lf/a/a/e/b/v;->c:Lf/a/a/g/e/c;

    invoke-virtual {p2, p1}, Lf/a/a/g/e/b;->b(Lf/a/a/e/b/n;)V

    .line 16
    iget-object p1, p0, Lf/a/a/e/b/u;->a:Lf/a/a/e/b/v;

    iget-object p1, p1, Lf/a/a/e/b/v;->e:Lf/a/a/e/b/y;

    invoke-static {p1}, Lf/a/a/e/b/y;->a(Lf/a/a/e/b/y;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lf/a/a/e/b/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    const-string v0, "list"

    .line 3
    iget-object v1, p0, Lf/a/a/e/b/u;->a:Lf/a/a/e/b/v;

    iget-object v1, v1, Lf/a/a/e/b/v;->a:Lf/a/a/e/g;

    invoke-interface {v1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lf/a/a/e/b/u;->a:Lf/a/a/e/b/v;

    iget-object v1, v1, Lf/a/a/e/b/v;->a:Lf/a/a/e/g;

    invoke-interface {v1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/InlineActivity;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lf/a/a/e/b/u;->a:Lf/a/a/e/b/v;

    iget-object v1, v1, Lf/a/a/e/b/v;->e:Lf/a/a/e/b/y;

    invoke-static {v1}, Lf/a/a/e/b/y;->a(Lf/a/a/e/b/y;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v1, p0, Lf/a/a/e/b/u;->a:Lf/a/a/e/b/v;

    iget-object v3, v1, Lf/a/a/e/b/v;->b:Lf/a/a/g/e/b;

    iget-object v1, v1, Lf/a/a/e/b/v;->c:Lf/a/a/g/e/c;

    invoke-virtual {v3, v1}, Lf/a/a/g/e/b;->b(Lf/a/a/e/b/n;)V

    .line 6
    :try_start_0
    iget-object v1, p0, Lf/a/a/e/b/u;->a:Lf/a/a/e/b/v;

    iget-object v1, v1, Lf/a/a/e/b/v;->a:Lf/a/a/e/g;

    invoke-interface {v1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/platform/InlineApplication;->g()Lf/a/a/d/f;

    move-result-object v1

    .line 7
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v1, v3}, Lf/a/a/d/f;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Lorg/w3c/dom/Document;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object p1

    check-cast p1, Lf/a/a/e/b/y;

    .line 9
    iget-object v0, p0, Lf/a/a/e/b/u;->a:Lf/a/a/e/b/v;

    iget-object v0, v0, Lf/a/a/e/b/v;->b:Lf/a/a/g/e/b;

    invoke-static {p1}, Lf/a/a/e/b/y;->c(Lf/a/a/e/b/y;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/a/g/e/b;->a(Ljava/util/List;)V

    .line 10
    iget-object v0, p0, Lf/a/a/e/b/u;->a:Lf/a/a/e/b/v;

    iget-object v0, v0, Lf/a/a/e/b/v;->e:Lf/a/a/e/b/y;

    invoke-static {p1}, Lf/a/a/e/b/y;->b(Lf/a/a/e/b/y;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lf/a/a/e/b/y;->a(Lf/a/a/e/b/y;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    iget-object p1, p0, Lf/a/a/e/b/u;->a:Lf/a/a/e/b/v;

    iget-object p1, p1, Lf/a/a/e/b/v;->e:Lf/a/a/e/b/y;

    invoke-static {p1}, Lf/a/a/e/b/y;->b(Lf/a/a/e/b/y;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 12
    iget-object p1, p0, Lf/a/a/e/b/u;->a:Lf/a/a/e/b/v;

    iget-object p1, p1, Lf/a/a/e/b/v;->b:Lf/a/a/g/e/b;

    iget-object v0, p0, Lf/a/a/e/b/u;->a:Lf/a/a/e/b/v;

    iget-object v0, v0, Lf/a/a/e/b/v;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lf/a/a/g/e/b;->c(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
