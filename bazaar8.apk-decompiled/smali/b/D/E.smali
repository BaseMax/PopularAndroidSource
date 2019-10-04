.class public abstract Lb/D/E;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/D/E$b;,
        Lb/D/E$a;,
        Lb/D/E$c;
    }
.end annotation


# static fields
.field public static final a:[I

.field public static final b:Lb/D/v;

.field public static c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lb/f/b<",
            "Landroid/animation/Animator;",
            "Lb/D/E$a;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public B:I

.field public C:Z

.field public D:Z

.field public E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/D/E$c;",
            ">;"
        }
    .end annotation
.end field

.field public F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public G:Lb/D/I;

.field public H:Lb/D/E$b;

.field public I:Lb/f/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public J:Lb/D/v;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:J

.field public g:Landroid/animation/TimeInterpolator;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lb/D/N;

.field public t:Lb/D/N;

.field public u:Lb/D/K;

.field public v:[I

.field public w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/D/M;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/D/M;",
            ">;"
        }
    .end annotation
.end field

.field public y:Landroid/view/ViewGroup;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lb/D/E;->a:[I

    .line 2
    new-instance v0, Lb/D/B;

    invoke-direct {v0}, Lb/D/B;-><init>()V

    sput-object v0, Lb/D/E;->b:Lb/D/v;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lb/D/E;->c:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/D/E;->d:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lb/D/E;->e:J

    .line 4
    iput-wide v0, p0, Lb/D/E;->f:J

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lb/D/E;->g:Landroid/animation/TimeInterpolator;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/D/E;->h:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/D/E;->i:Ljava/util/ArrayList;

    .line 8
    iput-object v0, p0, Lb/D/E;->j:Ljava/util/ArrayList;

    .line 9
    iput-object v0, p0, Lb/D/E;->k:Ljava/util/ArrayList;

    .line 10
    iput-object v0, p0, Lb/D/E;->l:Ljava/util/ArrayList;

    .line 11
    iput-object v0, p0, Lb/D/E;->m:Ljava/util/ArrayList;

    .line 12
    iput-object v0, p0, Lb/D/E;->n:Ljava/util/ArrayList;

    .line 13
    iput-object v0, p0, Lb/D/E;->o:Ljava/util/ArrayList;

    .line 14
    iput-object v0, p0, Lb/D/E;->p:Ljava/util/ArrayList;

    .line 15
    iput-object v0, p0, Lb/D/E;->q:Ljava/util/ArrayList;

    .line 16
    iput-object v0, p0, Lb/D/E;->r:Ljava/util/ArrayList;

    .line 17
    new-instance v1, Lb/D/N;

    invoke-direct {v1}, Lb/D/N;-><init>()V

    iput-object v1, p0, Lb/D/E;->s:Lb/D/N;

    .line 18
    new-instance v1, Lb/D/N;

    invoke-direct {v1}, Lb/D/N;-><init>()V

    iput-object v1, p0, Lb/D/E;->t:Lb/D/N;

    .line 19
    iput-object v0, p0, Lb/D/E;->u:Lb/D/K;

    .line 20
    sget-object v1, Lb/D/E;->a:[I

    iput-object v1, p0, Lb/D/E;->v:[I

    .line 21
    iput-object v0, p0, Lb/D/E;->y:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lb/D/E;->z:Z

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lb/D/E;->A:Ljava/util/ArrayList;

    .line 24
    iput v1, p0, Lb/D/E;->B:I

    .line 25
    iput-boolean v1, p0, Lb/D/E;->C:Z

    .line 26
    iput-boolean v1, p0, Lb/D/E;->D:Z

    .line 27
    iput-object v0, p0, Lb/D/E;->E:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/D/E;->F:Ljava/util/ArrayList;

    .line 29
    sget-object v0, Lb/D/E;->b:Lb/D/v;

    iput-object v0, p0, Lb/D/E;->J:Lb/D/v;

    return-void
.end method

.method public static a(Lb/D/N;Landroid/view/View;Lb/D/M;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lb/D/N;->a:Lb/f/b;

    invoke-virtual {v0, p1, p2}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 134
    iget-object v1, p0, Lb/D/N;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 135
    iget-object v1, p0, Lb/D/N;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v1, p0, Lb/D/N;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    :cond_1
    :goto_0
    invoke-static {p1}, Lb/i/k/z;->r(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 138
    iget-object v1, p0, Lb/D/N;->d:Lb/f/b;

    invoke-virtual {v1, p2}, Lb/f/i;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    iget-object v1, p0, Lb/D/N;->d:Lb/f/b;

    invoke-virtual {v1, p2, v0}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 140
    :cond_2
    iget-object v1, p0, Lb/D/N;->d:Lb/f/b;

    invoke-virtual {v1, p2, p1}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_5

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 143
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 144
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 145
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 146
    iget-object p2, p0, Lb/D/N;->c:Lb/f/f;

    invoke-virtual {p2, v1, v2}, Lb/f/f;->c(J)I

    move-result p2

    if-ltz p2, :cond_4

    .line 147
    iget-object p1, p0, Lb/D/N;->c:Lb/f/f;

    invoke-virtual {p1, v1, v2}, Lb/f/f;->b(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    .line 148
    invoke-static {p1, p2}, Lb/i/k/z;->b(Landroid/view/View;Z)V

    .line 149
    iget-object p0, p0, Lb/D/N;->c:Lb/f/f;

    invoke-virtual {p0, v1, v2, v0}, Lb/f/f;->c(JLjava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x1

    .line 150
    invoke-static {p1, p2}, Lb/i/k/z;->b(Landroid/view/View;Z)V

    .line 151
    iget-object p0, p0, Lb/D/N;->c:Lb/f/f;

    invoke-virtual {p0, v1, v2, p1}, Lb/f/f;->c(JLjava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static a(Lb/D/M;Lb/D/M;Ljava/lang/String;)Z
    .locals 0

    .line 209
    iget-object p0, p0, Lb/D/M;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 210
    iget-object p1, p1, Lb/D/M;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p2, p0

    :cond_2
    :goto_0
    return p2
.end method

.method public static h()Lb/f/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/f/b<",
            "Landroid/animation/Animator;",
            "Lb/D/E$a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lb/D/E;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/f/b;

    invoke-direct {v0}, Lb/f/b;-><init>()V

    .line 3
    sget-object v1, Lb/D/E;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Lb/D/M;Lb/D/M;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(J)Lb/D/E;
    .locals 0

    .line 1
    iput-wide p1, p0, Lb/D/E;->f:J

    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Lb/D/E;
    .locals 0

    .line 2
    iput-object p1, p0, Lb/D/E;->g:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public a(Landroid/view/View;)Lb/D/E;
    .locals 1

    .line 97
    iget-object v0, p0, Lb/D/E;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lb/D/E$c;)Lb/D/E;
    .locals 1

    .line 235
    iget-object v0, p0, Lb/D/E;->E:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/D/E;->E:Ljava/util/ArrayList;

    .line 237
    :cond_0
    iget-object v0, p0, Lb/D/E;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 244
    iget-wide v0, p0, Lb/D/E;->f:J

    const-wide/16 v2, -0x1

    const-string v4, ") "

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lb/D/E;->f:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 246
    :cond_0
    iget-wide v0, p0, Lb/D/E;->e:J

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/D/E;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 248
    :cond_1
    iget-object v0, p0, Lb/D/E;->g:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lb/D/E;->g:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 250
    :cond_2
    iget-object v0, p0, Lb/D/E;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lb/D/E;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 251
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "tgts("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 252
    iget-object v0, p0, Lb/D/E;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_6

    move-object v0, p1

    const/4 p1, 0x0

    .line 253
    :goto_0
    iget-object v3, p0, Lb/D/E;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_5

    if-lez p1, :cond_4

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/D/E;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    move-object p1, v0

    .line 256
    :cond_6
    iget-object v0, p0, Lb/D/E;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 257
    :goto_1
    iget-object v0, p0, Lb/D/E;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    if-lez v2, :cond_7

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 259
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lb/D/E;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 260
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_9
    return-object p1
.end method

.method public a()V
    .locals 6

    .line 221
    iget v0, p0, Lb/D/E;->B:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lb/D/E;->B:I

    .line 222
    iget v0, p0, Lb/D/E;->B:I

    if-nez v0, :cond_5

    .line 223
    iget-object v0, p0, Lb/D/E;->E:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    iget-object v0, p0, Lb/D/E;->E:Ljava/util/ArrayList;

    .line 225
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 226
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 227
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/D/E$c;

    invoke-interface {v5, p0}, Lb/D/E$c;->c(Lb/D/E;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 228
    :goto_1
    iget-object v3, p0, Lb/D/E;->s:Lb/D/N;

    iget-object v3, v3, Lb/D/N;->c:Lb/f/f;

    invoke-virtual {v3}, Lb/f/f;->c()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 229
    iget-object v3, p0, Lb/D/E;->s:Lb/D/N;

    iget-object v3, v3, Lb/D/N;->c:Lb/f/f;

    invoke-virtual {v3, v0}, Lb/f/f;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 230
    invoke-static {v3, v2}, Lb/i/k/z;->b(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 231
    :goto_2
    iget-object v3, p0, Lb/D/E;->t:Lb/D/N;

    iget-object v3, v3, Lb/D/N;->c:Lb/f/f;

    invoke-virtual {v3}, Lb/f/f;->c()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 232
    iget-object v3, p0, Lb/D/E;->t:Lb/D/N;

    iget-object v3, v3, Lb/D/N;->c:Lb/f/f;

    invoke-virtual {v3, v0}, Lb/f/f;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 233
    invoke-static {v3, v2}, Lb/i/k/z;->b(Landroid/view/View;Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 234
    :cond_4
    iput-boolean v1, p0, Lb/D/E;->D:Z

    :cond_5
    return-void
.end method

.method public a(Landroid/animation/Animator;)V
    .locals 5

    if-nez p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lb/D/E;->a()V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lb/D/E;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 214
    invoke-virtual {p0}, Lb/D/E;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 215
    :cond_1
    invoke-virtual {p0}, Lb/D/E;->i()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 216
    invoke-virtual {p0}, Lb/D/E;->i()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 217
    :cond_2
    invoke-virtual {p0}, Lb/D/E;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 218
    invoke-virtual {p0}, Lb/D/E;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 219
    :cond_3
    new-instance v0, Lb/D/D;

    invoke-direct {v0, p0}, Lb/D/D;-><init>(Lb/D/E;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 220
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public final a(Landroid/animation/Animator;Lb/f/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Lb/f/b<",
            "Landroid/animation/Animator;",
            "Lb/D/E$a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 95
    new-instance v0, Lb/D/C;

    invoke-direct {v0, p0, p2}, Lb/D/C;-><init>(Lb/D/E;Lb/f/b;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    invoke-virtual {p0, p1}, Lb/D/E;->a(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 159
    iget-object v1, p0, Lb/D/E;->l:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 160
    :cond_1
    iget-object v1, p0, Lb/D/E;->m:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 161
    :cond_2
    iget-object v1, p0, Lb/D/E;->n:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 162
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 163
    iget-object v4, p0, Lb/D/E;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 165
    new-instance v1, Lb/D/M;

    invoke-direct {v1}, Lb/D/M;-><init>()V

    .line 166
    iput-object p1, v1, Lb/D/M;->b:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 167
    invoke-virtual {p0, v1}, Lb/D/E;->c(Lb/D/M;)V

    goto :goto_1

    .line 168
    :cond_5
    invoke-virtual {p0, v1}, Lb/D/E;->a(Lb/D/M;)V

    .line 169
    :goto_1
    iget-object v3, v1, Lb/D/M;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {p0, v1}, Lb/D/E;->b(Lb/D/M;)V

    if-eqz p2, :cond_6

    .line 171
    iget-object v3, p0, Lb/D/E;->s:Lb/D/N;

    invoke-static {v3, p1, v1}, Lb/D/E;->a(Lb/D/N;Landroid/view/View;Lb/D/M;)V

    goto :goto_2

    .line 172
    :cond_6
    iget-object v3, p0, Lb/D/E;->t:Lb/D/N;

    invoke-static {v3, p1, v1}, Lb/D/E;->a(Lb/D/N;Landroid/view/View;Lb/D/M;)V

    .line 173
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 174
    iget-object v1, p0, Lb/D/E;->p:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 175
    :cond_8
    iget-object v0, p0, Lb/D/E;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 176
    :cond_9
    iget-object v0, p0, Lb/D/E;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 177
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 178
    iget-object v3, p0, Lb/D/E;->r:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 179
    :cond_b
    check-cast p1, Landroid/view/ViewGroup;

    .line 180
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 181
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lb/D/E;->a(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 10

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/D/E;->w:Ljava/util/ArrayList;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/D/E;->x:Ljava/util/ArrayList;

    .line 184
    iget-object v0, p0, Lb/D/E;->s:Lb/D/N;

    iget-object v1, p0, Lb/D/E;->t:Lb/D/N;

    invoke-virtual {p0, v0, v1}, Lb/D/E;->a(Lb/D/N;Lb/D/N;)V

    .line 185
    invoke-static {}, Lb/D/E;->h()Lb/f/b;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lb/f/i;->size()I

    move-result v1

    .line 187
    invoke-static {p1}, Lb/D/ba;->d(Landroid/view/View;)Lb/D/ka;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_6

    .line 188
    invoke-virtual {v0, v1}, Lb/f/i;->c(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_5

    .line 189
    invoke-virtual {v0, v4}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/D/E$a;

    if-eqz v5, :cond_5

    .line 190
    iget-object v6, v5, Lb/D/E$a;->a:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, v5, Lb/D/E$a;->d:Lb/D/ka;

    .line 191
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 192
    iget-object v6, v5, Lb/D/E$a;->c:Lb/D/M;

    .line 193
    iget-object v7, v5, Lb/D/E$a;->a:Landroid/view/View;

    .line 194
    invoke-virtual {p0, v7, v3}, Lb/D/E;->c(Landroid/view/View;Z)Lb/D/M;

    move-result-object v8

    .line 195
    invoke-virtual {p0, v7, v3}, Lb/D/E;->b(Landroid/view/View;Z)Lb/D/M;

    move-result-object v9

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    .line 196
    iget-object v9, p0, Lb/D/E;->t:Lb/D/N;

    iget-object v9, v9, Lb/D/N;->a:Lb/f/b;

    invoke-virtual {v9, v7}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lb/D/M;

    :cond_0
    if-nez v8, :cond_1

    if-eqz v9, :cond_2

    .line 197
    :cond_1
    iget-object v5, v5, Lb/D/E$a;->e:Lb/D/E;

    .line 198
    invoke-virtual {v5, v6, v9}, Lb/D/E;->a(Lb/D/M;Lb/D/M;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 199
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 200
    :cond_3
    invoke-virtual {v0, v4}, Lb/f/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 201
    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 202
    :cond_6
    iget-object v6, p0, Lb/D/E;->s:Lb/D/N;

    iget-object v7, p0, Lb/D/E;->t:Lb/D/N;

    iget-object v8, p0, Lb/D/E;->w:Ljava/util/ArrayList;

    iget-object v9, p0, Lb/D/E;->x:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lb/D/E;->a(Landroid/view/ViewGroup;Lb/D/N;Lb/D/N;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 203
    invoke-virtual {p0}, Lb/D/E;->s()V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Lb/D/N;Lb/D/N;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lb/D/N;",
            "Lb/D/N;",
            "Ljava/util/ArrayList<",
            "Lb/D/M;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lb/D/M;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 55
    invoke-static {}, Lb/D/E;->h()Lb/f/b;

    move-result-object v8

    .line 56
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 57
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-wide v0, 0x7fffffffffffffffL

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_d

    move-object/from16 v13, p4

    .line 58
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/D/M;

    move-object/from16 v14, p5

    .line 59
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/D/M;

    if-eqz v2, :cond_0

    .line 60
    iget-object v5, v2, Lb/D/M;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v3, :cond_1

    .line 61
    iget-object v5, v3, Lb/D/M;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    :cond_2
    move/from16 v16, v10

    move/from16 v18, v12

    goto/16 :goto_7

    :cond_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 62
    invoke-virtual {v6, v2, v3}, Lb/D/E;->a(Lb/D/M;Lb/D/M;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_2

    .line 63
    invoke-virtual {v6, v7, v2, v3}, Lb/D/E;->a(Landroid/view/ViewGroup;Lb/D/M;Lb/D/M;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_a

    .line 64
    iget-object v15, v3, Lb/D/M;->b:Landroid/view/View;

    .line 65
    invoke-virtual/range {p0 .. p0}, Lb/D/E;->r()[Ljava/lang/String;

    move-result-object v4

    if-eqz v15, :cond_9

    if-eqz v4, :cond_9

    .line 66
    array-length v11, v4

    if-lez v11, :cond_9

    .line 67
    new-instance v11, Lb/D/M;

    invoke-direct {v11}, Lb/D/M;-><init>()V

    .line 68
    iput-object v15, v11, Lb/D/M;->b:Landroid/view/View;

    move-object/from16 v17, v5

    move/from16 v16, v10

    move-object/from16 v10, p3

    .line 69
    iget-object v5, v10, Lb/D/N;->a:Lb/f/b;

    invoke-virtual {v5, v15}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/D/M;

    if-eqz v5, :cond_6

    const/4 v10, 0x0

    .line 70
    :goto_3
    array-length v13, v4

    if-ge v10, v13, :cond_6

    .line 71
    iget-object v13, v11, Lb/D/M;->a:Ljava/util/Map;

    aget-object v14, v4, v10

    move/from16 v18, v12

    iget-object v12, v5, Lb/D/M;->a:Ljava/util/Map;

    move-object/from16 v19, v5

    aget-object v5, v4, v10

    .line 72
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 73
    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v14, p5

    move/from16 v12, v18

    move-object/from16 v5, v19

    goto :goto_3

    :cond_6
    move/from16 v18, v12

    .line 74
    invoke-virtual {v8}, Lb/f/i;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_8

    .line 75
    invoke-virtual {v8, v5}, Lb/f/i;->c(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    .line 76
    invoke-virtual {v8, v10}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/D/E$a;

    .line 77
    iget-object v12, v10, Lb/D/E$a;->c:Lb/D/M;

    if-eqz v12, :cond_7

    iget-object v12, v10, Lb/D/E$a;->a:Landroid/view/View;

    if-ne v12, v15, :cond_7

    iget-object v12, v10, Lb/D/E$a;->b:Ljava/lang/String;

    .line 78
    invoke-virtual/range {p0 .. p0}, Lb/D/E;->e()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 79
    iget-object v10, v10, Lb/D/E$a;->c:Lb/D/M;

    invoke-virtual {v10, v11}, Lb/D/M;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v5, v17

    goto :goto_5

    :cond_9
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    move-object/from16 v5, v17

    const/4 v11, 0x0

    :goto_5
    move-object v10, v5

    move-object v5, v11

    goto :goto_6

    :cond_a
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    .line 80
    iget-object v4, v2, Lb/D/M;->b:Landroid/view/View;

    move-object v15, v4

    move-object/from16 v10, v17

    const/4 v5, 0x0

    :goto_6
    if-eqz v10, :cond_c

    .line 81
    iget-object v4, v6, Lb/D/E;->G:Lb/D/I;

    if-eqz v4, :cond_b

    .line 82
    invoke-virtual {v4, v7, v6, v2, v3}, Lb/D/I;->a(Landroid/view/ViewGroup;Lb/D/E;Lb/D/M;Lb/D/M;)J

    move-result-wide v2

    .line 83
    iget-object v4, v6, Lb/D/E;->F:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    long-to-int v11, v2

    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_b
    move-wide v11, v0

    .line 85
    new-instance v13, Lb/D/E$a;

    invoke-virtual/range {p0 .. p0}, Lb/D/E;->e()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static/range {p1 .. p1}, Lb/D/ba;->d(Landroid/view/View;)Lb/D/ka;

    move-result-object v4

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lb/D/E$a;-><init>(Landroid/view/View;Ljava/lang/String;Lb/D/E;Lb/D/ka;Lb/D/M;)V

    .line 87
    invoke-virtual {v8, v10, v13}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, v6, Lb/D/E;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v11

    :cond_c
    :goto_7
    add-int/lit8 v12, v18, 0x1

    move/from16 v10, v16

    goto/16 :goto_0

    .line 89
    :cond_d
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    .line 90
    :goto_8
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 91
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 92
    iget-object v4, v6, Lb/D/E;->F:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 93
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v3}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    add-long/2addr v4, v7

    .line 94
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_e
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 98
    invoke-virtual {p0, p2}, Lb/D/E;->a(Z)V

    .line 99
    iget-object v0, p0, Lb/D/E;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lb/D/E;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lb/D/E;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lb/D/E;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p0, p1, p2}, Lb/D/E;->a(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 103
    :goto_1
    iget-object v2, p0, Lb/D/E;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 104
    iget-object v2, p0, Lb/D/E;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 105
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 106
    new-instance v3, Lb/D/M;

    invoke-direct {v3}, Lb/D/M;-><init>()V

    .line 107
    iput-object v2, v3, Lb/D/M;->b:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 108
    invoke-virtual {p0, v3}, Lb/D/E;->c(Lb/D/M;)V

    goto :goto_2

    .line 109
    :cond_4
    invoke-virtual {p0, v3}, Lb/D/E;->a(Lb/D/M;)V

    .line 110
    :goto_2
    iget-object v4, v3, Lb/D/M;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {p0, v3}, Lb/D/E;->b(Lb/D/M;)V

    if-eqz p2, :cond_5

    .line 112
    iget-object v4, p0, Lb/D/E;->s:Lb/D/N;

    invoke-static {v4, v2, v3}, Lb/D/E;->a(Lb/D/N;Landroid/view/View;Lb/D/M;)V

    goto :goto_3

    .line 113
    :cond_5
    iget-object v4, p0, Lb/D/E;->t:Lb/D/N;

    invoke-static {v4, v2, v3}, Lb/D/E;->a(Lb/D/N;Landroid/view/View;Lb/D/M;)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    .line 114
    :goto_4
    iget-object v0, p0, Lb/D/E;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 115
    iget-object v0, p0, Lb/D/E;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 116
    new-instance v2, Lb/D/M;

    invoke-direct {v2}, Lb/D/M;-><init>()V

    .line 117
    iput-object v0, v2, Lb/D/M;->b:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 118
    invoke-virtual {p0, v2}, Lb/D/E;->c(Lb/D/M;)V

    goto :goto_5

    .line 119
    :cond_8
    invoke-virtual {p0, v2}, Lb/D/E;->a(Lb/D/M;)V

    .line 120
    :goto_5
    iget-object v3, v2, Lb/D/M;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p0, v2}, Lb/D/E;->b(Lb/D/M;)V

    if-eqz p2, :cond_9

    .line 122
    iget-object v3, p0, Lb/D/E;->s:Lb/D/N;

    invoke-static {v3, v0, v2}, Lb/D/E;->a(Lb/D/N;Landroid/view/View;Lb/D/M;)V

    goto :goto_6

    .line 123
    :cond_9
    iget-object v3, p0, Lb/D/E;->t:Lb/D/N;

    invoke-static {v3, v0, v2}, Lb/D/E;->a(Lb/D/N;Landroid/view/View;Lb/D/M;)V

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    :goto_7
    if-nez p2, :cond_d

    .line 124
    iget-object p1, p0, Lb/D/E;->I:Lb/f/b;

    if-eqz p1, :cond_d

    .line 125
    invoke-virtual {p1}, Lb/f/i;->size()I

    move-result p1

    .line 126
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_b

    .line 127
    iget-object v2, p0, Lb/D/E;->I:Lb/f/b;

    invoke-virtual {v2, v0}, Lb/f/i;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    iget-object v3, p0, Lb/D/E;->s:Lb/D/N;

    iget-object v3, v3, Lb/D/N;->d:Lb/f/b;

    invoke-virtual {v3, v2}, Lb/f/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    if-ge v1, p1, :cond_d

    .line 129
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_c

    .line 130
    iget-object v2, p0, Lb/D/E;->I:Lb/f/b;

    invoke-virtual {v2, v1}, Lb/f/i;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    iget-object v3, p0, Lb/D/E;->s:Lb/D/N;

    iget-object v3, v3, Lb/D/N;->d:Lb/f/b;

    invoke-virtual {v3, v2, v0}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_d
    return-void
.end method

.method public a(Lb/D/E$b;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lb/D/E;->H:Lb/D/E$b;

    return-void
.end method

.method public a(Lb/D/I;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lb/D/E;->G:Lb/D/I;

    return-void
.end method

.method public abstract a(Lb/D/M;)V
.end method

.method public final a(Lb/D/N;Lb/D/N;)V
    .locals 5

    .line 46
    new-instance v0, Lb/f/b;

    iget-object v1, p1, Lb/D/N;->a:Lb/f/b;

    invoke-direct {v0, v1}, Lb/f/b;-><init>(Lb/f/i;)V

    .line 47
    new-instance v1, Lb/f/b;

    iget-object v2, p2, Lb/D/N;->a:Lb/f/b;

    invoke-direct {v1, v2}, Lb/f/b;-><init>(Lb/f/i;)V

    const/4 v2, 0x0

    .line 48
    :goto_0
    iget-object v3, p0, Lb/D/E;->v:[I

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 49
    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 50
    :cond_0
    iget-object v3, p1, Lb/D/N;->c:Lb/f/f;

    iget-object v4, p2, Lb/D/N;->c:Lb/f/f;

    invoke-virtual {p0, v0, v1, v3, v4}, Lb/D/E;->a(Lb/f/b;Lb/f/b;Lb/f/f;Lb/f/f;)V

    goto :goto_1

    .line 51
    :cond_1
    iget-object v3, p1, Lb/D/N;->b:Landroid/util/SparseArray;

    iget-object v4, p2, Lb/D/N;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1, v3, v4}, Lb/D/E;->a(Lb/f/b;Lb/f/b;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 52
    :cond_2
    iget-object v3, p1, Lb/D/N;->d:Lb/f/b;

    iget-object v4, p2, Lb/D/N;->d:Lb/f/b;

    invoke-virtual {p0, v0, v1, v3, v4}, Lb/D/E;->a(Lb/f/b;Lb/f/b;Lb/f/b;Lb/f/b;)V

    goto :goto_1

    .line 53
    :cond_3
    invoke-virtual {p0, v0, v1}, Lb/D/E;->b(Lb/f/b;Lb/f/b;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_4
    invoke-virtual {p0, v0, v1}, Lb/D/E;->a(Lb/f/b;Lb/f/b;)V

    return-void
.end method

.method public a(Lb/D/v;)V
    .locals 0

    if-nez p1, :cond_0

    .line 238
    sget-object p1, Lb/D/E;->b:Lb/D/v;

    iput-object p1, p0, Lb/D/E;->J:Lb/D/v;

    goto :goto_0

    .line 239
    :cond_0
    iput-object p1, p0, Lb/D/E;->J:Lb/D/v;

    :goto_0
    return-void
.end method

.method public final a(Lb/f/b;Lb/f/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/b<",
            "Landroid/view/View;",
            "Lb/D/M;",
            ">;",
            "Lb/f/b<",
            "Landroid/view/View;",
            "Lb/D/M;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    :goto_0
    invoke-virtual {p1}, Lb/f/i;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 37
    invoke-virtual {p1, v1}, Lb/f/i;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/D/M;

    .line 38
    iget-object v4, v2, Lb/D/M;->b:Landroid/view/View;

    invoke-virtual {p0, v4}, Lb/D/E;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    iget-object v4, p0, Lb/D/E;->w:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v2, p0, Lb/D/E;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    invoke-virtual {p2}, Lb/f/i;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 42
    invoke-virtual {p2, v0}, Lb/f/i;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/D/M;

    .line 43
    iget-object v1, p1, Lb/D/M;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Lb/D/E;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Lb/D/E;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p1, p0, Lb/D/E;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final a(Lb/f/b;Lb/f/b;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/b<",
            "Landroid/view/View;",
            "Lb/D/M;",
            ">;",
            "Lb/f/b<",
            "Landroid/view/View;",
            "Lb/D/M;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {p0, v2}, Lb/D/E;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 18
    invoke-virtual {p0, v3}, Lb/D/E;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 19
    invoke-virtual {p1, v2}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/D/M;

    .line 20
    invoke-virtual {p2, v3}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/D/M;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 21
    iget-object v6, p0, Lb/D/E;->w:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v4, p0, Lb/D/E;->x:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p1, v2}, Lb/f/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p2, v3}, Lb/f/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lb/f/b;Lb/f/b;Lb/f/b;Lb/f/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/b<",
            "Landroid/view/View;",
            "Lb/D/M;",
            ">;",
            "Lb/f/b<",
            "Landroid/view/View;",
            "Lb/D/M;",
            ">;",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lb/f/b<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-virtual {p3}, Lb/f/i;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 26
    invoke-virtual {p3, v1}, Lb/f/i;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {p0, v2}, Lb/D/E;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    invoke-virtual {p3, v1}, Lb/f/i;->c(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 29
    invoke-virtual {p0, v3}, Lb/D/E;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    invoke-virtual {p1, v2}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/D/M;

    .line 31
    invoke-virtual {p2, v3}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/D/M;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 32
    iget-object v6, p0, Lb/D/E;->w:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v4, p0, Lb/D/E;->x:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {p1, v2}, Lb/f/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p2, v3}, Lb/f/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lb/f/b;Lb/f/b;Lb/f/f;Lb/f/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/b<",
            "Landroid/view/View;",
            "Lb/D/M;",
            ">;",
            "Lb/f/b<",
            "Landroid/view/View;",
            "Lb/D/M;",
            ">;",
            "Lb/f/f<",
            "Landroid/view/View;",
            ">;",
            "Lb/f/f<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p3}, Lb/f/f;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    invoke-virtual {p3, v1}, Lb/f/f;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Lb/D/E;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p3, v1}, Lb/f/f;->a(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Lb/f/f;->b(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {p0, v3}, Lb/D/E;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {p1, v2}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/D/M;

    .line 9
    invoke-virtual {p2, v3}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/D/M;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 10
    iget-object v6, p0, Lb/D/E;->w:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v4, p0, Lb/D/E;->x:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p1, v2}, Lb/f/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p2, v3}, Lb/f/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lb/D/E;->s:Lb/D/N;

    iget-object p1, p1, Lb/D/N;->a:Lb/f/b;

    invoke-virtual {p1}, Lb/f/i;->clear()V

    .line 153
    iget-object p1, p0, Lb/D/E;->s:Lb/D/N;

    iget-object p1, p1, Lb/D/N;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 154
    iget-object p1, p0, Lb/D/E;->s:Lb/D/N;

    iget-object p1, p1, Lb/D/N;->c:Lb/f/f;

    invoke-virtual {p1}, Lb/f/f;->a()V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lb/D/E;->t:Lb/D/N;

    iget-object p1, p1, Lb/D/N;->a:Lb/f/b;

    invoke-virtual {p1}, Lb/f/i;->clear()V

    .line 156
    iget-object p1, p0, Lb/D/E;->t:Lb/D/N;

    iget-object p1, p1, Lb/D/N;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 157
    iget-object p1, p0, Lb/D/E;->t:Lb/D/N;

    iget-object p1, p1, Lb/D/N;->c:Lb/f/f;

    invoke-virtual {p1}, Lb/f/f;->a()V

    :goto_0
    return-void
.end method

.method public a(Lb/D/M;Lb/D/M;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 204
    invoke-virtual {p0}, Lb/D/E;->r()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 205
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 206
    invoke-static {p1, p2, v5}, Lb/D/E;->a(Lb/D/M;Lb/D/M;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    :cond_1
    iget-object v2, p1, Lb/D/M;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 208
    invoke-static {p1, p2, v3}, Lb/D/E;->a(Lb/D/M;Lb/D/M;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/D/E;->f:J

    return-wide v0
.end method

.method public b(J)Lb/D/E;
    .locals 0

    .line 2
    iput-wide p1, p0, Lb/D/E;->e:J

    return-object p0
.end method

.method public b(Lb/D/E$c;)Lb/D/E;
    .locals 1

    .line 36
    iget-object v0, p0, Lb/D/E;->E:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    .line 37
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p0, Lb/D/E;->E:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lb/D/E;->E:Ljava/util/ArrayList;

    :cond_1
    return-object p0
.end method

.method public b(Landroid/view/View;Z)Lb/D/M;
    .locals 6

    .line 28
    iget-object v0, p0, Lb/D/E;->u:Lb/D/K;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0, p1, p2}, Lb/D/E;->b(Landroid/view/View;Z)Lb/D/M;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 30
    iget-object v0, p0, Lb/D/E;->w:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/D/E;->x:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 31
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    .line 32
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/D/M;

    if-nez v5, :cond_3

    return-object v1

    .line 33
    :cond_3
    iget-object v5, v5, Lb/D/M;->b:Landroid/view/View;

    if-ne v5, p1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    .line 34
    iget-object p1, p0, Lb/D/E;->x:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lb/D/E;->w:Ljava/util/ArrayList;

    .line 35
    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lb/D/M;

    :cond_7
    return-object v1
.end method

.method public b(Lb/D/M;)V
    .locals 5

    .line 40
    iget-object v0, p0, Lb/D/E;->G:Lb/D/I;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lb/D/M;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 41
    iget-object v0, p0, Lb/D/E;->G:Lb/D/I;

    invoke-virtual {v0}, Lb/D/I;->a()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 42
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 43
    iget-object v3, p1, Lb/D/M;->a:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 44
    iget-object v0, p0, Lb/D/E;->G:Lb/D/I;

    invoke-virtual {v0, p1}, Lb/D/I;->a(Lb/D/M;)V

    :cond_3
    return-void
.end method

.method public final b(Lb/f/b;Lb/f/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/b<",
            "Landroid/view/View;",
            "Lb/D/M;",
            ">;",
            "Lb/f/b<",
            "Landroid/view/View;",
            "Lb/D/M;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lb/f/i;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Lb/f/i;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lb/D/E;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p2, v1}, Lb/f/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/D/M;

    if-eqz v1, :cond_0

    .line 7
    iget-object v2, v1, Lb/D/M;->b:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lb/D/E;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Lb/f/i;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/D/M;

    .line 9
    iget-object v3, p0, Lb/D/E;->w:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v2, p0, Lb/D/E;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 5

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 12
    iget-object v1, p0, Lb/D/E;->l:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 13
    :cond_0
    iget-object v1, p0, Lb/D/E;->m:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 14
    :cond_1
    iget-object v1, p0, Lb/D/E;->n:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 16
    iget-object v4, p0, Lb/D/E;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 17
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget-object v1, p0, Lb/D/E;->o:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-static {p1}, Lb/i/k/z;->r(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 19
    iget-object v1, p0, Lb/D/E;->o:Ljava/util/ArrayList;

    invoke-static {p1}, Lb/i/k/z;->r(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 20
    :cond_4
    iget-object v1, p0, Lb/D/E;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Lb/D/E;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lb/D/E;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Lb/D/E;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    return v3

    .line 23
    :cond_7
    iget-object v1, p0, Lb/D/E;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lb/D/E;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 24
    :cond_8
    iget-object v0, p0, Lb/D/E;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-static {p1}, Lb/i/k/z;->r(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v3

    .line 25
    :cond_9
    iget-object v0, p0, Lb/D/E;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 26
    :goto_1
    iget-object v1, p0, Lb/D/E;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 27
    iget-object v1, p0, Lb/D/E;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return v2

    :cond_c
    :goto_2
    return v3
.end method

.method public c()Lb/D/E$b;
    .locals 1

    .line 19
    iget-object v0, p0, Lb/D/E;->H:Lb/D/E$b;

    return-object v0
.end method

.method public c(Landroid/view/View;Z)Lb/D/M;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/D/E;->u:Lb/D/K;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lb/D/E;->c(Landroid/view/View;Z)Lb/D/M;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lb/D/E;->s:Lb/D/N;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lb/D/E;->t:Lb/D/N;

    .line 4
    :goto_0
    iget-object p2, p2, Lb/D/N;->a:Lb/f/b;

    invoke-virtual {p2, p1}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/D/M;

    return-object p1
.end method

.method public c(Landroid/view/View;)V
    .locals 5

    .line 5
    iget-boolean v0, p0, Lb/D/E;->D:Z

    if-nez v0, :cond_3

    .line 6
    invoke-static {}, Lb/D/E;->h()Lb/f/b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lb/f/i;->size()I

    move-result v1

    .line 8
    invoke-static {p1}, Lb/D/ba;->d(Landroid/view/View;)Lb/D/ka;

    move-result-object p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Lb/f/i;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/D/E$a;

    .line 10
    iget-object v4, v3, Lb/D/E$a;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v3, v3, Lb/D/E$a;->d:Lb/D/ka;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {v0, v1}, Lb/f/i;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 12
    invoke-static {v3}, Lb/D/a;->a(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lb/D/E;->E:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 14
    iget-object p1, p0, Lb/D/E;->E:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 17
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/D/E$c;

    invoke-interface {v3, p0}, Lb/D/E$c;->b(Lb/D/E;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18
    :cond_2
    iput-boolean v2, p0, Lb/D/E;->C:Z

    :cond_3
    return-void
.end method

.method public abstract c(Lb/D/M;)V
.end method

.method public clone()Lb/D/E;
    .locals 3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/D/E;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lb/D/E;->F:Ljava/util/ArrayList;

    .line 4
    new-instance v2, Lb/D/N;

    invoke-direct {v2}, Lb/D/N;-><init>()V

    iput-object v2, v1, Lb/D/E;->s:Lb/D/N;

    .line 5
    new-instance v2, Lb/D/N;

    invoke-direct {v2}, Lb/D/N;-><init>()V

    iput-object v2, v1, Lb/D/E;->t:Lb/D/N;

    .line 6
    iput-object v0, v1, Lb/D/E;->w:Ljava/util/ArrayList;

    .line 7
    iput-object v0, v1, Lb/D/E;->x:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/D/E;->clone()Lb/D/E;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/D/E;->g:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public d(Landroid/view/View;)Lb/D/E;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/D/E;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lb/D/E;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lb/D/E;->C:Z

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, Lb/D/E;->D:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Lb/D/E;->h()Lb/f/b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lb/f/i;->size()I

    move-result v2

    .line 5
    invoke-static {p1}, Lb/D/ba;->d(Landroid/view/View;)Lb/D/ka;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Lb/f/i;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/D/E$a;

    .line 7
    iget-object v4, v3, Lb/D/E$a;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v3, v3, Lb/D/E$a;->d:Lb/D/ka;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v0, v2}, Lb/f/i;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 9
    invoke-static {v3}, Lb/D/a;->b(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lb/D/E;->E:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 11
    iget-object p1, p0, Lb/D/E;->E:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 14
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/D/E$c;

    invoke-interface {v3, p0}, Lb/D/E$c;->d(Lb/D/E;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :cond_2
    iput-boolean v1, p0, Lb/D/E;->C:Z

    :cond_3
    return-void
.end method

.method public f()Lb/D/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/D/E;->J:Lb/D/v;

    return-object v0
.end method

.method public g()Lb/D/I;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/D/E;->G:Lb/D/I;

    return-object v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/D/E;->e:J

    return-wide v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/D/E;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/D/E;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/D/E;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/D/E;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public r()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lb/D/E;->t()V

    .line 2
    invoke-static {}, Lb/D/E;->h()Lb/f/b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lb/D/E;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 4
    invoke-virtual {v0, v2}, Lb/f/i;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0}, Lb/D/E;->t()V

    .line 6
    invoke-virtual {p0, v2, v0}, Lb/D/E;->a(Landroid/animation/Animator;Lb/f/b;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lb/D/E;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    invoke-virtual {p0}, Lb/D/E;->a()V

    return-void
.end method

.method public t()V
    .locals 5

    .line 1
    iget v0, p0, Lb/D/E;->B:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lb/D/E;->E:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lb/D/E;->E:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/D/E$c;

    invoke-interface {v4, p0}, Lb/D/E$c;->a(Lb/D/E;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v1, p0, Lb/D/E;->D:Z

    .line 8
    :cond_1
    iget v0, p0, Lb/D/E;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/D/E;->B:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lb/D/E;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
