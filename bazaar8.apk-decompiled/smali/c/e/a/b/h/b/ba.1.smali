.class public final Lc/e/a/b/h/b/ba;
.super Lc/e/a/b/h/b/m;


# instance fields
.field public final a:Lc/e/a/b/h/b/Tb;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Tb;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lc/e/a/b/h/b/ba;-><init>(Lc/e/a/b/h/b/Tb;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lc/e/a/b/h/b/Tb;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/e/a/b/h/b/m;-><init>()V

    .line 3
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lc/e/a/b/h/b/ba;->c:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/h/b/ba;)Lc/e/a/b/h/b/Tb;
    .locals 0

    .line 154
    iget-object p0, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/measurement/internal/zzm;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/internal/zzm;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzga;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/ba;->b(Lcom/google/android/gms/measurement/internal/zzm;Z)V

    .line 46
    iget-object v0, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 47
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    new-instance v1, Lc/e/a/b/h/b/ra;

    invoke-direct {v1, p0, p1}, Lc/e/a/b/h/b/ra;-><init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 48
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/U;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 49
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/b/h/b/bc;

    if-nez p2, :cond_1

    .line 52
    iget-object v3, v2, Lc/e/a/b/h/b/bc;->c:Ljava/lang/String;

    invoke-static {v3}, Lc/e/a/b/h/b/cc;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    :cond_1
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzga;

    invoke-direct {v3, v2}, Lcom/google/android/gms/measurement/internal/zzga;-><init>(Lc/e/a/b/h/b/bc;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 54
    :goto_1
    iget-object v0, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 55
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Failed to get user attributes. appId"

    .line 58
    invoke-virtual {v0, v1, p1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzm;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzm;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzr;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p3, v0}, Lc/e/a/b/h/b/ba;->b(Lcom/google/android/gms/measurement/internal/zzm;Z)V

    .line 131
    iget-object v0, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 132
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    new-instance v1, Lc/e/a/b/h/b/ja;

    invoke-direct {v1, p0, p3, p1, p2}, Lc/e/a/b/h/b/ja;-><init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzm;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/U;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 134
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 135
    :goto_0
    iget-object p2, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzr;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/String;Z)V

    .line 138
    iget-object v0, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 139
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    new-instance v1, Lc/e/a/b/h/b/ka;

    invoke-direct {v1, p0, p1, p2, p3}, Lc/e/a/b/h/b/ka;-><init>(Lc/e/a/b/h/b/ba;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/U;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 141
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 142
    :goto_0
    iget-object p2, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzga;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/String;Z)V

    .line 117
    iget-object v0, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 118
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    new-instance v1, Lc/e/a/b/h/b/ia;

    invoke-direct {v1, p0, p1, p2, p3}, Lc/e/a/b/h/b/ia;-><init>(Lc/e/a/b/h/b/ba;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/U;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 120
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 121
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/h/b/bc;

    if-nez p4, :cond_1

    .line 123
    iget-object v1, v0, Lc/e/a/b/h/b/bc;->c:Ljava/lang/String;

    invoke-static {v1}, Lc/e/a/b/h/b/cc;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzga;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzga;-><init>(Lc/e/a/b/h/b/bc;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p3

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 125
    :goto_1
    iget-object p3, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 126
    invoke-virtual {p3}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object p3

    .line 127
    invoke-virtual {p3}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p3

    .line 128
    invoke-static {p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "Failed to get user attributes. appId"

    invoke-virtual {p3, p4, p1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzm;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/measurement/internal/zzm;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzga;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, p4, v0}, Lc/e/a/b/h/b/ba;->b(Lcom/google/android/gms/measurement/internal/zzm;Z)V

    .line 102
    iget-object v0, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 103
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    new-instance v1, Lc/e/a/b/h/b/ha;

    invoke-direct {v1, p0, p4, p1, p2}, Lc/e/a/b/h/b/ha;-><init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzm;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/U;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 105
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 106
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/h/b/bc;

    if-nez p3, :cond_1

    .line 108
    iget-object v1, v0, Lc/e/a/b/h/b/bc;->c:Ljava/lang/String;

    invoke-static {v1}, Lc/e/a/b/h/b/cc;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzga;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzga;-><init>(Lc/e/a/b/h/b/bc;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 110
    :goto_1
    iget-object p2, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 111
    invoke-virtual {p2}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    .line 112
    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p2

    iget-object p3, p4, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 113
    invoke-static {p3}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "Failed to get user attributes. appId"

    .line 114
    invoke-virtual {p2, p4, p3, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 85
    new-instance v7, Lc/e/a/b/h/b/ta;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lc/e/a/b/h/b/ta;-><init>(Lc/e/a/b/h/b/ba;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v7}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/h/b/ba;->b(Lcom/google/android/gms/measurement/internal/zzm;Z)V

    .line 3
    new-instance v0, Lc/e/a/b/h/b/ma;

    invoke-direct {v0, p0, p1, p2}, Lc/e/a/b/h/b/ma;-><init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzaj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    const/4 p3, 0x1

    .line 6
    invoke-virtual {p0, p2, p3}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/String;Z)V

    .line 7
    new-instance p3, Lc/e/a/b/h/b/na;

    invoke-direct {p3, p0, p1, p2}, Lc/e/a/b/h/b/na;-><init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzaj;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 1

    .line 40
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/h/b/ba;->b(Lcom/google/android/gms/measurement/internal/zzm;Z)V

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lc/e/a/b/h/b/pa;

    invoke-direct {v0, p0, p1, p2}, Lc/e/a/b/h/b/pa;-><init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/Runnable;)V

    return-void

    .line 44
    :cond_0
    new-instance v0, Lc/e/a/b/h/b/qa;

    invoke-direct {v0, p0, p1, p2}, Lc/e/a/b/h/b/qa;-><init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 2

    .line 144
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/String;Z)V

    .line 145
    new-instance v0, Lc/e/a/b/h/b/la;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/h/b/la;-><init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 2

    .line 94
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/String;Z)V

    .line 97
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 98
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->x()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 99
    new-instance p1, Lc/e/a/b/h/b/fa;

    invoke-direct {p1, p0, v0}, Lc/e/a/b/h/b/fa;-><init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/Runnable;)V

    return-void

    .line 100
    :cond_0
    new-instance p1, Lc/e/a/b/h/b/ga;

    invoke-direct {p1, p0, v0}, Lc/e/a/b/h/b/ga;-><init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 2

    .line 86
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/h/b/ba;->b(Lcom/google/android/gms/measurement/internal/zzm;Z)V

    .line 89
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Lcom/google/android/gms/measurement/internal/zzr;)V

    .line 90
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    .line 91
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->x()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 92
    new-instance p1, Lc/e/a/b/h/b/da;

    invoke-direct {p1, p0, v0, p2}, Lc/e/a/b/h/b/da;-><init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/Runnable;)V

    return-void

    .line 93
    :cond_0
    new-instance p1, Lc/e/a/b/h/b/ea;

    invoke-direct {p1, p0, v0, p2}, Lc/e/a/b/h/b/ea;-><init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 146
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lc/e/a/b/h/b/k;->ha:Lc/e/a/b/h/b/k$a;

    const/4 v1, 0x0

    .line 148
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 151
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/U;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    .line 60
    :try_start_0
    iget-object p2, p0, Lc/e/a/b/h/b/ba;->b:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const-string p2, "com.google.android.gms"

    .line 61
    iget-object v2, p0, Lc/e/a/b/h/b/ba;->c:Ljava/lang/String;

    .line 62
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 63
    invoke-virtual {p2}, Lc/e/a/b/h/b/Tb;->b()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 64
    invoke-static {p2, v2}, Lc/e/a/b/d/g/q;->a(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 65
    invoke-virtual {p2}, Lc/e/a/b/h/b/Tb;->b()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lc/e/a/b/d/f;->a(Landroid/content/Context;)Lc/e/a/b/d/f;

    move-result-object p2

    .line 66
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p2, v2}, Lc/e/a/b/d/f;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 67
    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/b/h/b/ba;->b:Ljava/lang/Boolean;

    .line 68
    :cond_2
    iget-object p2, p0, Lc/e/a/b/h/b/ba;->b:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    .line 69
    :cond_3
    iget-object p2, p0, Lc/e/a/b/h/b/ba;->c:Ljava/lang/String;

    if-nez p2, :cond_4

    .line 70
    iget-object p2, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 71
    invoke-virtual {p2}, Lc/e/a/b/h/b/Tb;->b()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 72
    invoke-static {p2, v2, p1}, Lc/e/a/b/d/e;->uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 73
    iput-object p1, p0, Lc/e/a/b/h/b/ba;->c:Ljava/lang/String;

    .line 74
    :cond_4
    iget-object p2, p0, Lc/e/a/b/h/b/ba;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    return-void

    .line 75
    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    const-string v2, "Unknown calling package name \'%s\'."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 76
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 77
    iget-object v0, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 78
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    .line 80
    invoke-static {p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Measurement Service called with invalid calling package. appId"

    .line 81
    invoke-virtual {v0, v1, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    throw p2

    .line 83
    :cond_7
    iget-object p1, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string p2, "Measurement Service called without app package"

    invoke-virtual {p1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 84
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzaj;Ljava/lang/String;)[B
    .locals 9

    .line 8
    invoke-static {p2}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, p2, v0}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/String;Z)V

    .line 11
    iget-object v0, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 12
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 14
    invoke-virtual {v1}, Lc/e/a/b/h/b/Tb;->g()Lc/e/a/b/h/b/r;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Log and bundle. event"

    .line 15
    invoke-virtual {v0, v2, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->c()Lc/e/a/b/d/g/e;

    move-result-object v0

    invoke-interface {v0}, Lc/e/a/b/d/g/e;->b()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 17
    iget-object v4, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 18
    invoke-virtual {v4}, Lc/e/a/b/h/b/Tb;->d()Lc/e/a/b/h/b/U;

    move-result-object v4

    new-instance v5, Lc/e/a/b/h/b/oa;

    invoke-direct {v5, p0, p1, p2}, Lc/e/a/b/h/b/oa;-><init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzaj;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v4, v5}, Lc/e/a/b/h/b/U;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 20
    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-nez v4, :cond_0

    .line 21
    iget-object v4, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 22
    invoke-virtual {v4}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v5, "Log and bundle returned null. appId"

    .line 24
    invoke-static {p2}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 25
    new-array v4, v4, [B

    .line 26
    :cond_0
    iget-object v5, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Tb;->c()Lc/e/a/b/d/g/e;

    move-result-object v5

    invoke-interface {v5}, Lc/e/a/b/d/g/e;->b()J

    move-result-wide v5

    div-long/2addr v5, v2

    .line 27
    iget-object v2, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 28
    invoke-virtual {v2}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v2

    const-string v3, "Log and bundle processed. event, size, time_ms"

    iget-object v7, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 30
    invoke-virtual {v7}, Lc/e/a/b/h/b/Tb;->g()Lc/e/a/b/h/b/r;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    array-length v8, v4

    .line 31
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sub-long/2addr v5, v0

    .line 32
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 33
    invoke-virtual {v2, v3, v7, v8, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 34
    :goto_0
    iget-object v1, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 35
    invoke-virtual {v1}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    .line 37
    invoke-static {p2}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 38
    invoke-virtual {v2}, Lc/e/a/b/h/b/Tb;->g()Lc/e/a/b/h/b/r;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Failed to log and bundle. appId, event, error"

    .line 39
    invoke-virtual {v1, v2, p2, p1, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 8

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    const-string v1, "_cmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaj;->b:Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzag;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaj;->b:Lcom/google/android/gms/measurement/internal/zzag;

    const-string v2, "_cis"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzag;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "referrer broadcast"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "referrer API"

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    :cond_1
    iget-object v0, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    .line 10
    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->i()Lc/e/a/b/h/b/pc;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, p2}, Lc/e/a/b/h/b/pc;->r(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 12
    iget-object p2, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Tb;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->z()Lc/e/a/b/h/b/v;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaj;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Event has been filtered "

    invoke-virtual {p2, v1, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzaj;->b:Lcom/google/android/gms/measurement/internal/zzag;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzaj;->c:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzaj;->d:J

    const-string v3, "_cmpx"

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;Ljava/lang/String;J)V

    return-object p2

    :cond_3
    return-object p1
.end method

.method public final b(Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/ba;->b(Lcom/google/android/gms/measurement/internal/zzm;Z)V

    .line 2
    new-instance v0, Lc/e/a/b/h/b/ca;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/h/b/ca;-><init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/measurement/internal/zzm;Z)V
    .locals 1

    .line 14
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/String;Z)V

    .line 16
    iget-object p2, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Tb;->h()Lc/e/a/b/h/b/cc;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzm;->r:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lc/e/a/b/h/b/cc;->d(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final c(Lcom/google/android/gms/measurement/internal/zzm;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/ba;->b(Lcom/google/android/gms/measurement/internal/zzm;Z)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/ba;->a:Lc/e/a/b/h/b/Tb;

    invoke-virtual {v0, p1}, Lc/e/a/b/h/b/Tb;->e(Lcom/google/android/gms/measurement/internal/zzm;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/ba;->b(Lcom/google/android/gms/measurement/internal/zzm;Z)V

    .line 2
    new-instance v0, Lc/e/a/b/h/b/sa;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/h/b/sa;-><init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/ba;->a(Ljava/lang/Runnable;)V

    return-void
.end method
