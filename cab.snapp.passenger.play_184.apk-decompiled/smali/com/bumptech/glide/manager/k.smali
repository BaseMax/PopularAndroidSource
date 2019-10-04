.class public final Lcom/bumptech/glide/manager/k;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/k$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/manager/a;

.field private final b:Lcom/bumptech/glide/manager/m;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/manager/k;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/h;

.field private e:Lcom/bumptech/glide/manager/k;

.field private f:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/bumptech/glide/manager/a;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/k;-><init>(Lcom/bumptech/glide/manager/a;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/manager/a;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 33
    new-instance v0, Lcom/bumptech/glide/manager/k$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/k$a;-><init>(Lcom/bumptech/glide/manager/k;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/k;->b:Lcom/bumptech/glide/manager/m;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/k;->c:Ljava/util/Set;

    .line 51
    iput-object p1, p0, Lcom/bumptech/glide/manager/k;->a:Lcom/bumptech/glide/manager/a;

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Lcom/bumptech/glide/manager/k;->b()V

    .line 165
    invoke-static {p1}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->getRequestManagerRetriever()Lcom/bumptech/glide/manager/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/manager/l;->a(Landroid/app/Activity;)Lcom/bumptech/glide/manager/k;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/k;->e:Lcom/bumptech/glide/manager/k;

    .line 166
    iget-object p1, p0, Lcom/bumptech/glide/manager/k;->e:Lcom/bumptech/glide/manager/k;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/manager/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/bumptech/glide/manager/k;->e:Lcom/bumptech/glide/manager/k;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/manager/k;->a(Lcom/bumptech/glide/manager/k;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/bumptech/glide/manager/k;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->e:Lcom/bumptech/glide/manager/k;

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/k;->b(Lcom/bumptech/glide/manager/k;)V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/bumptech/glide/manager/k;->e:Lcom/bumptech/glide/manager/k;

    :cond_0
    return-void
.end method

.method private b(Lcom/bumptech/glide/manager/k;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Landroid/app/Fragment;)Z
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/bumptech/glide/manager/k;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 152
    :goto_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method final a()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/manager/k;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->e:Lcom/bumptech/glide/manager/k;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->c:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->e:Lcom/bumptech/glide/manager/k;

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->e:Lcom/bumptech/glide/manager/k;

    .line 113
    invoke-virtual {v1}, Lcom/bumptech/glide/manager/k;->a()Ljava/util/Set;

    move-result-object v1

    .line 112
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/manager/k;

    .line 114
    invoke-virtual {v2}, Lcom/bumptech/glide/manager/k;->getParentFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bumptech/glide/manager/k;->b(Landroid/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 109
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final a(Landroid/app/Fragment;)V
    .locals 1

    .line 127
    iput-object p1, p0, Lcom/bumptech/glide/manager/k;->f:Landroid/app/Fragment;

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final getRequestManager()Lcom/bumptech/glide/h;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->d:Lcom/bumptech/glide/h;

    return-object v0
.end method

.method public final getRequestManagerTreeNode()Lcom/bumptech/glide/manager/m;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->b:Lcom/bumptech/glide/manager/m;

    return-object v0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 181
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 183
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/k;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 212
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 213
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->a:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->c()V

    .line 214
    invoke-direct {p0}, Lcom/bumptech/glide/manager/k;->b()V

    return-void
.end method

.method public final onDetach()V
    .locals 0

    .line 194
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 195
    invoke-direct {p0}, Lcom/bumptech/glide/manager/k;->b()V

    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 200
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 201
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->a:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->a()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 206
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 207
    iget-object v0, p0, Lcom/bumptech/glide/manager/k;->a:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->b()V

    return-void
.end method

.method public final setRequestManager(Lcom/bumptech/glide/h;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/bumptech/glide/manager/k;->d:Lcom/bumptech/glide/h;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 1138
    invoke-virtual {p0}, Lcom/bumptech/glide/manager/k;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 1142
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/manager/k;->f:Landroid/app/Fragment;

    .line 219
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
