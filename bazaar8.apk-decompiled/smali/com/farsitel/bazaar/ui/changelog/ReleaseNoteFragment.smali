.class public final Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;
.super Lc/c/a/n/c/d/k;
.source "ReleaseNoteFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/k<",
        "Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteItem;",
        "Lcom/farsitel/bazaar/data/entity/None;",
        "Lc/c/a/n/i/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic ya:[Lh/i/i;


# instance fields
.field public Aa:Z

.field public Ba:Ljava/util/HashMap;

.field public final za:Lh/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "titleName"

    const-string v4, "getTitleName()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;->ya:[Lh/i/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/k;-><init>()V

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment$titleName$2;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment$titleName$2;-><init>(Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;)V

    invoke-static {v0}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;->za:Lh/c;

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;->Ba:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/ReleaseNoteScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/ReleaseNoteScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/ReleaseNoteScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/ReleaseNoteScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Ua()Lc/c/a/n/c/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;->Ua()Lc/c/a/n/i/g;

    move-result-object v0

    return-object v0
.end method

.method public Ua()Lc/c/a/n/i/g;
    .locals 1

    .line 2
    new-instance v0, Lc/c/a/n/i/g;

    invoke-direct {v0}, Lc/c/a/n/i/g;-><init>()V

    return-object v0
.end method

.method public Za()Lcom/farsitel/bazaar/data/entity/None;
    .locals 1

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/data/entity/None;->INSTANCE:Lcom/farsitel/bazaar/data/entity/None;

    return-object v0
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;->Za()Lcom/farsitel/bazaar/data/entity/None;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;->Ba:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;->Ba:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;->Ba:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;->Ba:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public hb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;->Aa:Z

    return v0
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;->jb()Lc/c/a/n/i/h;

    move-result-object v0

    return-object v0
.end method

.method public jb()Lc/c/a/n/i/h;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/i/h;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/i/h;

    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/d/k;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;->La()V

    return-void
.end method

.method public rb()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;->za:Lh/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteFragment;->ya:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
