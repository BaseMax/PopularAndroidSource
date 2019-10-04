.class public Lb/w/j;
.super Ljava/lang/Object;
.source "NavController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/w/j$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/app/Activity;

.field public c:Lb/w/v;

.field public d:Lb/w/r;

.field public e:Landroid/os/Bundle;

.field public f:[Ljava/lang/String;

.field public g:[I

.field public h:[Landroid/os/Parcelable;

.field public i:Z

.field public final j:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lb/w/h;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lb/r/k;

.field public l:Lb/w/l;

.field public final m:Lb/w/L;

.field public final n:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lb/w/j$a;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lb/a/d;

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    .line 3
    new-instance v0, Lb/w/L;

    invoke-direct {v0}, Lb/w/L;-><init>()V

    iput-object v0, p0, Lb/w/j;->m:Lb/w/L;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lb/w/j;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v0, Lb/w/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/w/i;-><init>(Lb/w/j;Z)V

    iput-object v0, p0, Lb/w/j;->o:Lb/a/d;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lb/w/j;->p:Z

    .line 7
    iput-object p1, p0, Lb/w/j;->a:Landroid/content/Context;

    .line 8
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 9
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lb/w/j;->b:Landroid/app/Activity;

    goto :goto_1

    .line 11
    :cond_0
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_1
    :goto_1
    iget-object p1, p0, Lb/w/j;->m:Lb/w/L;

    new-instance v0, Lb/w/s;

    invoke-direct {v0, p1}, Lb/w/s;-><init>(Lb/w/L;)V

    invoke-virtual {p1, v0}, Lb/w/L;->a(Lb/w/K;)Lb/w/K;

    .line 13
    iget-object p1, p0, Lb/w/j;->m:Lb/w/L;

    new-instance v0, Lb/w/c;

    iget-object v1, p0, Lb/w/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/w/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lb/w/L;->a(Lb/w/K;)Lb/w/K;

    return-void
.end method


# virtual methods
.method public a(I)Lb/w/o;
    .locals 2

    .line 102
    iget-object v0, p0, Lb/w/j;->d:Lb/w/r;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_0
    invoke-virtual {v0}, Lb/w/o;->d()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 104
    iget-object p1, p0, Lb/w/j;->d:Lb/w/r;

    return-object p1

    .line 105
    :cond_1
    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/w/j;->d:Lb/w/r;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    .line 106
    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/h;

    invoke-virtual {v0}, Lb/w/h;->b()Lb/w/o;

    move-result-object v0

    .line 107
    :goto_0
    instance-of v1, v0, Lb/w/r;

    if-eqz v1, :cond_3

    check-cast v0, Lb/w/r;

    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {v0}, Lb/w/o;->getParent()Lb/w/r;

    move-result-object v0

    .line 109
    :goto_1
    invoke-virtual {v0, p1}, Lb/w/r;->f(I)Lb/w/o;

    move-result-object p1

    return-object p1
.end method

.method public final a([I)Ljava/lang/String;
    .locals 4

    .line 93
    iget-object v0, p0, Lb/w/j;->d:Lb/w/r;

    const/4 v1, 0x0

    .line 94
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 95
    aget v2, p1, v1

    if-nez v1, :cond_0

    .line 96
    iget-object v3, p0, Lb/w/j;->d:Lb/w/r;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Lb/w/r;->f(I)Lb/w/o;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_1

    .line 97
    iget-object p1, p0, Lb/w/j;->a:Landroid/content/Context;

    invoke-static {p1, v2}, Lb/w/o;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 98
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    .line 99
    check-cast v3, Lb/w/r;

    .line 100
    :goto_2
    invoke-virtual {v3}, Lb/w/r;->h()I

    move-result v0

    invoke-virtual {v3, v0}, Lb/w/r;->f(I)Lb/w/o;

    move-result-object v0

    instance-of v0, v0, Lb/w/r;

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {v3}, Lb/w/r;->h()I

    move-result v0

    invoke-virtual {v3, v0}, Lb/w/r;->f(I)Lb/w/o;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lb/w/r;

    goto :goto_2

    :cond_2
    move-object v0, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1, p2, v0}, Lb/w/j;->a(ILandroid/os/Bundle;Lb/w/w;)V

    return-void
.end method

.method public a(ILandroid/os/Bundle;Lb/w/w;)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, p1, p2, p3, v0}, Lb/w/j;->a(ILandroid/os/Bundle;Lb/w/w;Lb/w/K$a;)V

    return-void
.end method

.method public a(ILandroid/os/Bundle;Lb/w/w;Lb/w/K$a;)V
    .locals 4

    .line 112
    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/w/j;->d:Lb/w/r;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    .line 113
    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/h;

    invoke-virtual {v0}, Lb/w/h;->b()Lb/w/o;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_a

    .line 114
    invoke-virtual {v0, p1}, Lb/w/o;->a(I)Lb/w/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    .line 115
    invoke-virtual {v0}, Lb/w/e;->c()Lb/w/w;

    move-result-object p3

    .line 116
    :cond_1
    invoke-virtual {v0}, Lb/w/e;->b()I

    move-result v2

    .line 117
    invoke-virtual {v0}, Lb/w/e;->a()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 118
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 119
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    move v2, p1

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    if-nez v1, :cond_4

    .line 120
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 121
    :cond_4
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_5
    if-nez v2, :cond_6

    if-eqz p3, :cond_6

    .line 122
    invoke-virtual {p3}, Lb/w/w;->e()I

    move-result p2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_6

    .line 123
    invoke-virtual {p3}, Lb/w/w;->e()I

    move-result p1

    invoke-virtual {p3}, Lb/w/w;->f()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lb/w/j;->a(IZ)Z

    return-void

    :cond_6
    if-eqz v2, :cond_9

    .line 124
    invoke-virtual {p0, v2}, Lb/w/j;->a(I)Lb/w/o;

    move-result-object p2

    if-nez p2, :cond_8

    .line 125
    iget-object p2, p0, Lb/w/j;->a:Landroid/content/Context;

    invoke-static {p2, v2}, Lb/w/o;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 126
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navigation destination "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " referenced from action "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/w/j;->a:Landroid/content/Context;

    .line 127
    invoke-static {v0, p1}, Lb/w/o;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    const-string p1, ""

    :goto_2
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is unknown to this NavController"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 128
    :cond_8
    invoke-virtual {p0, p2, v1, p3, p4}, Lb/w/j;->a(Lb/w/o;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)V

    return-void

    .line 129
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no current navigation node"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 9

    .line 22
    iget-object v0, p0, Lb/w/j;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "android-support-nav:controller:navigatorState:names"

    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 25
    iget-object v2, p0, Lb/w/j;->m:Lb/w/L;

    invoke-virtual {v2, v1}, Lb/w/L;->a(Ljava/lang/String;)Lb/w/K;

    move-result-object v2

    .line 26
    iget-object v3, p0, Lb/w/j;->e:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v2, v1}, Lb/w/K;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lb/w/j;->f:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 29
    :goto_1
    iget-object v3, p0, Lb/w/j;->f:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 30
    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 31
    iget-object v4, p0, Lb/w/j;->g:[I

    aget v4, v4, v0

    .line 32
    iget-object v5, p0, Lb/w/j;->h:[Landroid/os/Parcelable;

    aget-object v5, v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 33
    invoke-virtual {p0, v4}, Lb/w/j;->a(I)Lb/w/o;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_2

    .line 34
    iget-object v4, p0, Lb/w/j;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 35
    :cond_2
    iget-object v4, p0, Lb/w/j;->j:Ljava/util/Deque;

    new-instance v7, Lb/w/h;

    iget-object v8, p0, Lb/w/j;->l:Lb/w/l;

    invoke-direct {v7, v3, v6, v5, v8}, Lb/w/h;-><init>(Ljava/util/UUID;Lb/w/o;Landroid/os/Bundle;Lb/w/l;)V

    invoke-interface {v4, v7}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 36
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown destination during restore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/w/j;->a:Landroid/content/Context;

    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_4
    invoke-virtual {p0}, Lb/w/j;->k()V

    .line 39
    iput-object v2, p0, Lb/w/j;->f:[Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lb/w/j;->g:[I

    .line 41
    iput-object v2, p0, Lb/w/j;->h:[Landroid/os/Parcelable;

    .line 42
    :cond_5
    iget-object v0, p0, Lb/w/j;->d:Lb/w/r;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 43
    iget-boolean v0, p0, Lb/w/j;->i:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lb/w/j;->b:Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 44
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/w/j;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-nez v1, :cond_7

    .line 45
    iget-object v0, p0, Lb/w/j;->d:Lb/w/r;

    invoke-virtual {p0, v0, p1, v2, v2}, Lb/w/j;->a(Lb/w/o;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)V

    :cond_7
    return-void
.end method

.method public a(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lb/w/j;->k:Lb/r/k;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lb/w/j;->o:Lb/a/d;

    invoke-virtual {v0}, Lb/a/d;->c()V

    .line 161
    iget-object v0, p0, Lb/w/j;->k:Lb/r/k;

    iget-object v1, p0, Lb/w/j;->o:Lb/a/d;

    invoke-virtual {p1, v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Lb/r/k;Lb/a/d;)V

    return-void

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lb/r/H;)V
    .locals 2

    .line 165
    invoke-static {p1}, Lb/w/l;->a(Lb/r/H;)Lb/w/l;

    move-result-object p1

    iput-object p1, p0, Lb/w/j;->l:Lb/w/l;

    .line 166
    iget-object p1, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/h;

    .line 167
    iget-object v1, p0, Lb/w/j;->l:Lb/w/l;

    invoke-virtual {v0, v1}, Lb/w/h;->a(Lb/w/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lb/r/k;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lb/w/j;->k:Lb/r/k;

    return-void
.end method

.method public a(Lb/w/j$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/h;

    .line 3
    invoke-virtual {v0}, Lb/w/h;->b()Lb/w/o;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lb/w/h;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 5
    invoke-interface {p1, p0, v1, v0}, Lb/w/j$a;->a(Lb/w/j;Lb/w/o;Landroid/os/Bundle;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lb/w/j;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lb/w/o;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 131
    invoke-virtual {p3}, Lb/w/w;->e()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 132
    invoke-virtual {p3}, Lb/w/w;->e()I

    move-result v0

    .line 133
    invoke-virtual {p3}, Lb/w/w;->f()Z

    move-result v1

    .line 134
    invoke-virtual {p0, v0, v1}, Lb/w/j;->b(IZ)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 135
    :goto_0
    iget-object v1, p0, Lb/w/j;->m:Lb/w/L;

    .line 136
    invoke-virtual {p1}, Lb/w/o;->e()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {v1, v2}, Lb/w/L;->a(Ljava/lang/String;)Lb/w/K;

    move-result-object v1

    .line 138
    invoke-virtual {p1, p2}, Lb/w/o;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 139
    invoke-virtual {v1, p1, p2, p3, p4}, Lb/w/K;->a(Lb/w/o;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)Lb/w/o;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 140
    instance-of p3, p1, Lb/w/d;

    if-nez p3, :cond_1

    .line 141
    :goto_1
    iget-object p3, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {p3}, Ljava/util/Deque;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lb/w/j;->j:Ljava/util/Deque;

    .line 142
    invoke-interface {p3}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb/w/h;

    invoke-virtual {p3}, Lb/w/h;->b()Lb/w/o;

    move-result-object p3

    instance-of p3, p3, Lb/w/d;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lb/w/j;->j:Ljava/util/Deque;

    .line 143
    invoke-interface {p3}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lb/w/h;

    invoke-virtual {p3}, Lb/w/h;->b()Lb/w/o;

    move-result-object p3

    invoke-virtual {p3}, Lb/w/o;->d()I

    move-result p3

    const/4 p4, 0x1

    .line 144
    invoke-virtual {p0, p3, p4}, Lb/w/j;->b(IZ)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    iget-object p3, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {p3}, Ljava/util/Deque;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 146
    iget-object p3, p0, Lb/w/j;->j:Ljava/util/Deque;

    new-instance p4, Lb/w/h;

    iget-object v1, p0, Lb/w/j;->d:Lb/w/r;

    iget-object v2, p0, Lb/w/j;->l:Lb/w/l;

    invoke-direct {p4, v1, p2, v2}, Lb/w/h;-><init>(Lb/w/o;Landroid/os/Bundle;Lb/w/l;)V

    invoke-interface {p3, p4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_2
    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    move-object p4, p1

    :cond_3
    :goto_2
    if-eqz p4, :cond_4

    .line 148
    invoke-virtual {p4}, Lb/w/o;->d()I

    move-result v1

    invoke-virtual {p0, v1}, Lb/w/j;->a(I)Lb/w/o;

    move-result-object v1

    if-nez v1, :cond_4

    .line 149
    invoke-virtual {p4}, Lb/w/o;->getParent()Lb/w/r;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 150
    new-instance v1, Lb/w/h;

    iget-object v2, p0, Lb/w/j;->l:Lb/w/l;

    invoke-direct {v1, p4, p2, v2}, Lb/w/h;-><init>(Lb/w/o;Landroid/os/Bundle;Lb/w/l;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    .line 151
    :cond_4
    iget-object p4, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {p4, p3}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 152
    new-instance p3, Lb/w/h;

    .line 153
    invoke-virtual {p1, p2}, Lb/w/o;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    iget-object p4, p0, Lb/w/j;->l:Lb/w/l;

    invoke-direct {p3, p1, p2, p4}, Lb/w/h;-><init>(Lb/w/o;Landroid/os/Bundle;Lb/w/l;)V

    .line 154
    iget-object p2, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {p2, p3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_5
    invoke-virtual {p0}, Lb/w/j;->k()V

    if-nez v0, :cond_6

    if-eqz p1, :cond_7

    .line 156
    :cond_6
    invoke-virtual {p0}, Lb/w/j;->a()Z

    :cond_7
    return-void
.end method

.method public a(Lb/w/p;)V
    .locals 1

    .line 157
    invoke-interface {p1}, Lb/w/p;->b()I

    move-result v0

    invoke-interface {p1}, Lb/w/p;->a()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lb/w/j;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Lb/w/r;Landroid/os/Bundle;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lb/w/j;->d:Lb/w/r;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Lb/w/o;->d()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lb/w/j;->b(IZ)Z

    .line 20
    :cond_0
    iput-object p1, p0, Lb/w/j;->d:Lb/w/r;

    .line 21
    invoke-virtual {p0, p2}, Lb/w/j;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lb/w/j;->p:Z

    .line 164
    invoke-virtual {p0}, Lb/w/j;->k()V

    return-void
.end method

.method public final a()Z
    .locals 6

    .line 9
    :goto_0
    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    .line 10
    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/h;

    invoke-virtual {v0}, Lb/w/h;->b()Lb/w/o;

    move-result-object v0

    instance-of v0, v0, Lb/w/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    .line 11
    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/h;

    invoke-virtual {v0}, Lb/w/h;->b()Lb/w/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/w/o;->d()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lb/w/j;->b(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/h;

    .line 14
    iget-object v2, p0, Lb/w/j;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/w/j$a;

    .line 15
    invoke-virtual {v0}, Lb/w/h;->b()Lb/w/o;

    move-result-object v4

    .line 16
    invoke-virtual {v0}, Lb/w/h;->a()Landroid/os/Bundle;

    move-result-object v5

    .line 17
    invoke-interface {v3, p0, v4, v5}, Lb/w/j$a;->a(Lb/w/j;Lb/w/o;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public a(IZ)Z
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lb/w/j;->b(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lb/w/j;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "android-support-nav:controller:deepLinkIds"

    .line 47
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 48
    :goto_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-eqz v1, :cond_2

    const-string v5, "android-support-nav:controller:deepLinkExtras"

    .line 49
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 50
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 51
    array-length v1, v3

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 52
    iget-object v1, p0, Lb/w/j;->d:Lb/w/r;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Lb/w/r;->a(Landroid/net/Uri;)Lb/w/o$a;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 53
    invoke-virtual {v1}, Lb/w/o$a;->f()Lb/w/o;

    move-result-object v3

    invoke-virtual {v3}, Lb/w/o;->a()[I

    move-result-object v3

    .line 54
    invoke-virtual {v1}, Lb/w/o$a;->g()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_5
    if-eqz v3, :cond_13

    .line 55
    array-length v1, v3

    if-nez v1, :cond_6

    goto/16 :goto_7

    .line 56
    :cond_6
    invoke-virtual {p0, v3}, Lb/w/j;->a([I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find destination "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in the navigation graph, ignoring the deep link from "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NavController"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    const-string v1, "android-support-nav:controller:deepLinkIntent"

    .line 58
    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v5, 0x10000000

    and-int/2addr v5, v1

    const/4 v6, 0x1

    if-eqz v5, :cond_9

    const v7, 0x8000

    and-int/2addr v1, v7

    if-nez v1, :cond_9

    .line 60
    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lb/w/j;->a:Landroid/content/Context;

    .line 62
    invoke-static {v1}, Lb/i/a/t;->a(Landroid/content/Context;)Lb/i/a/t;

    move-result-object v1

    .line 63
    invoke-virtual {v1, p1}, Lb/i/a/t;->b(Landroid/content/Intent;)Lb/i/a/t;

    .line 64
    invoke-virtual {v1}, Lb/i/a/t;->b()V

    .line 65
    iget-object p1, p0, Lb/w/j;->b:Landroid/app/Activity;

    if-eqz p1, :cond_8

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 67
    iget-object p1, p0, Lb/w/j;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_8
    return v6

    :cond_9
    const-string p1, "unknown destination during deep link: "

    if-eqz v5, :cond_d

    .line 68
    iget-object v1, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 69
    iget-object v1, p0, Lb/w/j;->d:Lb/w/r;

    invoke-virtual {v1}, Lb/w/o;->d()I

    move-result v1

    invoke-virtual {p0, v1, v6}, Lb/w/j;->b(IZ)Z

    :cond_a
    const/4 v1, 0x0

    .line 70
    :goto_2
    array-length v5, v3

    if-ge v1, v5, :cond_c

    add-int/lit8 v5, v1, 0x1

    .line 71
    aget v1, v3, v1

    .line 72
    invoke-virtual {p0, v1}, Lb/w/j;->a(I)Lb/w/o;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 73
    new-instance v1, Lb/w/w$a;

    invoke-direct {v1}, Lb/w/w$a;-><init>()V

    .line 74
    invoke-virtual {v1, v0}, Lb/w/w$a;->a(I)Lb/w/w$a;

    invoke-virtual {v1, v0}, Lb/w/w$a;->b(I)Lb/w/w$a;

    invoke-virtual {v1}, Lb/w/w$a;->a()Lb/w/w;

    move-result-object v1

    .line 75
    invoke-virtual {p0, v7, v4, v1, v2}, Lb/w/j;->a(Lb/w/o;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)V

    move v1, v5

    goto :goto_2

    .line 76
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lb/w/j;->a:Landroid/content/Context;

    .line 77
    invoke-static {p1, v1}, Lb/w/o;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return v6

    .line 78
    :cond_d
    iget-object v1, p0, Lb/w/j;->d:Lb/w/r;

    move-object v5, v1

    const/4 v1, 0x0

    .line 79
    :goto_3
    array-length v7, v3

    if-ge v1, v7, :cond_12

    .line 80
    aget v7, v3, v1

    if-nez v1, :cond_e

    .line 81
    iget-object v8, p0, Lb/w/j;->d:Lb/w/r;

    goto :goto_4

    :cond_e
    invoke-virtual {v5, v7}, Lb/w/r;->f(I)Lb/w/o;

    move-result-object v8

    :goto_4
    if-eqz v8, :cond_11

    .line 82
    array-length v7, v3

    sub-int/2addr v7, v6

    if-eq v1, v7, :cond_10

    .line 83
    check-cast v8, Lb/w/r;

    .line 84
    :goto_5
    invoke-virtual {v8}, Lb/w/r;->h()I

    move-result v5

    invoke-virtual {v8, v5}, Lb/w/r;->f(I)Lb/w/o;

    move-result-object v5

    instance-of v5, v5, Lb/w/r;

    if-eqz v5, :cond_f

    .line 85
    invoke-virtual {v8}, Lb/w/r;->h()I

    move-result v5

    invoke-virtual {v8, v5}, Lb/w/r;->f(I)Lb/w/o;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lb/w/r;

    goto :goto_5

    :cond_f
    move-object v5, v8

    goto :goto_6

    .line 86
    :cond_10
    invoke-virtual {v8, v4}, Lb/w/o;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    new-instance v9, Lb/w/w$a;

    invoke-direct {v9}, Lb/w/w$a;-><init>()V

    iget-object v10, p0, Lb/w/j;->d:Lb/w/r;

    .line 87
    invoke-virtual {v10}, Lb/w/o;->d()I

    move-result v10

    invoke-virtual {v9, v10, v6}, Lb/w/w$a;->a(IZ)Lb/w/w$a;

    .line 88
    invoke-virtual {v9, v0}, Lb/w/w$a;->a(I)Lb/w/w$a;

    invoke-virtual {v9, v0}, Lb/w/w$a;->b(I)Lb/w/w$a;

    invoke-virtual {v9}, Lb/w/w$a;->a()Lb/w/w;

    move-result-object v9

    .line 89
    invoke-virtual {p0, v8, v7, v9, v2}, Lb/w/j;->a(Lb/w/o;Landroid/os/Bundle;Lb/w/w;Lb/w/K$a;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 90
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lb/w/j;->a:Landroid/content/Context;

    .line 91
    invoke-static {p1, v7}, Lb/w/o;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_12
    iput-boolean v6, p0, Lb/w/j;->i:Z

    return v6

    :cond_13
    :goto_7
    return v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/w/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Lb/w/j;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public b(ILandroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-virtual {p0}, Lb/w/j;->f()Lb/w/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/w/v;->a(I)Lb/w/r;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lb/w/j;->a(Lb/w/r;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lb/w/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "android-support-nav:controller:navigatorState"

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lb/w/j;->e:Landroid/os/Bundle;

    const-string v0, "android-support-nav:controller:backStackUUIDs"

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/w/j;->f:[Ljava/lang/String;

    const-string v0, "android-support-nav:controller:backStackIds"

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lb/w/j;->g:[I

    const-string v0, "android-support-nav:controller:backStackArgs"

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lb/w/j;->h:[Landroid/os/Parcelable;

    const-string v0, "android-support-nav:controller:deepLinkHandled"

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lb/w/j;->i:Z

    return-void
.end method

.method public b(IZ)Z
    .locals 7

    .line 2
    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/w/h;

    invoke-virtual {v3}, Lb/w/h;->b()Lb/w/o;

    move-result-object v3

    .line 7
    iget-object v5, p0, Lb/w/j;->m:Lb/w/L;

    .line 8
    invoke-virtual {v3}, Lb/w/o;->e()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {v5, v6}, Lb/w/L;->a(Ljava/lang/String;)Lb/w/K;

    move-result-object v5

    if-nez p2, :cond_2

    .line 10
    invoke-virtual {v3}, Lb/w/o;->d()I

    move-result v6

    if-eq v6, p1, :cond_3

    .line 11
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    invoke-virtual {v3}, Lb/w/o;->d()I

    move-result v3

    if-ne v3, p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_5

    .line 13
    iget-object p2, p0, Lb/w/j;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lb/w/o;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring popBackStack to destination "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as it was not found on the current back stack"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NavController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 15
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/w/K;

    .line 16
    invoke-virtual {p2}, Lb/w/K;->c()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 17
    iget-object p2, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/w/h;

    .line 18
    iget-object v0, p0, Lb/w/j;->l:Lb/w/l;

    if-eqz v0, :cond_6

    .line 19
    iget-object p2, p2, Lb/w/h;->c:Ljava/util/UUID;

    invoke-virtual {v0, p2}, Lb/w/l;->a(Ljava/util/UUID;)V

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    .line 20
    :cond_7
    invoke-virtual {p0}, Lb/w/j;->k()V

    return v1
.end method

.method public c()Lb/w/o;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/h;

    invoke-virtual {v0}, Lb/w/h;->b()Lb/w/o;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lb/w/j;->b(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final d()I
    .locals 3

    .line 1
    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/w/h;

    .line 2
    invoke-virtual {v2}, Lb/w/h;->b()Lb/w/o;

    move-result-object v2

    instance-of v2, v2, Lb/w/r;

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public e()Lb/w/r;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/w/j;->d:Lb/w/r;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setGraph() before calling getGraph()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Lb/w/v;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/w/j;->c:Lb/w/v;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/w/v;

    iget-object v1, p0, Lb/w/j;->a:Landroid/content/Context;

    iget-object v2, p0, Lb/w/j;->m:Lb/w/L;

    invoke-direct {v0, v1, v2}, Lb/w/v;-><init>(Landroid/content/Context;Lb/w/L;)V

    iput-object v0, p0, Lb/w/j;->c:Lb/w/v;

    .line 3
    :cond_0
    iget-object v0, p0, Lb/w/j;->c:Lb/w/v;

    return-object v0
.end method

.method public g()Lb/w/L;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/w/j;->m:Lb/w/L;

    return-object v0
.end method

.method public h()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lb/w/j;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2
    invoke-virtual {p0}, Lb/w/j;->c()Lb/w/o;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lb/w/o;->d()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Lb/w/o;->getParent()Lb/w/r;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lb/w/r;->h()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 6
    new-instance v2, Lb/w/n;

    invoke-direct {v2, p0}, Lb/w/n;-><init>(Lb/w/j;)V

    .line 7
    invoke-virtual {v0}, Lb/w/o;->d()I

    move-result v0

    invoke-virtual {v2, v0}, Lb/w/n;->a(I)Lb/w/n;

    .line 8
    invoke-virtual {v2}, Lb/w/n;->a()Lb/i/a/t;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lb/i/a/t;->b()V

    .line 10
    iget-object v0, p0, Lb/w/j;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return v1

    .line 12
    :cond_1
    invoke-virtual {v0}, Lb/w/o;->d()I

    move-result v2

    .line 13
    invoke-virtual {v0}, Lb/w/o;->getParent()Lb/w/r;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    .line 14
    :cond_3
    invoke-virtual {p0}, Lb/w/j;->i()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lb/w/j;->c()Lb/w/o;

    move-result-object v0

    invoke-virtual {v0}, Lb/w/o;->d()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lb/w/j;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public j()Landroid/os/Bundle;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v2, p0, Lb/w/j;->m:Lb/w/L;

    invoke-virtual {v2}, Lb/w/L;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/w/K;

    invoke-virtual {v3}, Lb/w/K;->b()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 9
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android-support-nav:controller:navigatorState:names"

    .line 10
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "android-support-nav:controller:navigatorState"

    .line 11
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 12
    :goto_1
    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez v2, :cond_3

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 14
    :cond_3
    iget-object v0, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 16
    iget-object v3, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/Parcelable;

    const/4 v4, 0x0

    .line 17
    iget-object v5, p0, Lb/w/j;->j:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/w/h;

    .line 18
    iget-object v7, v6, Lb/w/h;->c:Ljava/util/UUID;

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    .line 19
    invoke-virtual {v6}, Lb/w/h;->b()Lb/w/o;

    move-result-object v7

    invoke-virtual {v7}, Lb/w/o;->d()I

    move-result v7

    aput v7, v1, v4

    add-int/lit8 v7, v4, 0x1

    .line 20
    invoke-virtual {v6}, Lb/w/h;->a()Landroid/os/Bundle;

    move-result-object v6

    aput-object v6, v3, v4

    move v4, v7

    goto :goto_2

    :cond_4
    const-string v4, "android-support-nav:controller:backStackUUIDs"

    .line 21
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "android-support-nav:controller:backStackIds"

    .line 22
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android-support-nav:controller:backStackArgs"

    .line 23
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 24
    :cond_5
    iget-boolean v0, p0, Lb/w/j;->i:Z

    if-eqz v0, :cond_7

    if-nez v2, :cond_6

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 26
    :cond_6
    iget-boolean v0, p0, Lb/w/j;->i:Z

    const-string v1, "android-support-nav:controller:deepLinkHandled"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    return-object v2
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/w/j;->o:Lb/a/d;

    iget-boolean v1, p0, Lb/w/j;->p:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/w/j;->d()I

    move-result v1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0, v2}, Lb/a/d;->a(Z)V

    return-void
.end method
