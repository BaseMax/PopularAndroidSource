.class public Lb/b/f/f$a;
.super Ljava/lang/Object;
.source "SupportActionModeWrapper.java"

# interfaces
.implements Lb/b/f/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/ActionMode$Callback;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/b/f/f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lb/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/i<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/b/f/f$a;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lb/b/f/f$a;->a:Landroid/view/ActionMode$Callback;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/f/f$a;->c:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Lb/f/i;

    invoke-direct {p1}, Lb/f/i;-><init>()V

    iput-object p1, p0, Lb/b/f/f$a;->d:Lb/f/i;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 3

    .line 6
    iget-object v0, p0, Lb/b/f/f$a;->d:Lb/f/i;

    invoke-virtual {v0, p1}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lb/b/f/a/v;

    iget-object v1, p0, Lb/b/f/f$a;->b:Landroid/content/Context;

    move-object v2, p1

    check-cast v2, Lb/i/d/a/a;

    invoke-direct {v0, v1, v2}, Lb/b/f/a/v;-><init>(Landroid/content/Context;Lb/i/d/a/a;)V

    .line 8
    iget-object v1, p0, Lb/b/f/f$a;->d:Lb/f/i;

    invoke-virtual {v1, p1, v0}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public a(Lb/b/f/b;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lb/b/f/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lb/b/f/f$a;->b(Lb/b/f/b;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public a(Lb/b/f/b;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lb/b/f/f$a;->b(Lb/b/f/b;)Landroid/view/ActionMode;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p2}, Lb/b/f/f$a;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public a(Lb/b/f/b;Landroid/view/MenuItem;)Z
    .locals 3

    .line 4
    iget-object v0, p0, Lb/b/f/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lb/b/f/f$a;->b(Lb/b/f/b;)Landroid/view/ActionMode;

    move-result-object p1

    new-instance v1, Lb/b/f/a/p;

    iget-object v2, p0, Lb/b/f/f$a;->b:Landroid/content/Context;

    check-cast p2, Lb/i/d/a/b;

    invoke-direct {v1, v2, p2}, Lb/b/f/a/p;-><init>(Landroid/content/Context;Lb/i/d/a/b;)V

    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Lb/b/f/b;)Landroid/view/ActionMode;
    .locals 4

    .line 4
    iget-object v0, p0, Lb/b/f/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    iget-object v2, p0, Lb/b/f/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/f;

    if-eqz v2, :cond_0

    .line 6
    iget-object v3, v2, Lb/b/f/f;->b:Lb/b/f/b;

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lb/b/f/f;

    iget-object v1, p0, Lb/b/f/f$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lb/b/f/f;-><init>(Landroid/content/Context;Lb/b/f/b;)V

    .line 8
    iget-object p1, p0, Lb/b/f/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public b(Lb/b/f/b;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lb/b/f/f$a;->b(Lb/b/f/b;)Landroid/view/ActionMode;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p2}, Lb/b/f/f$a;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
