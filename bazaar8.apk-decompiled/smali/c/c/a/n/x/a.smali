.class public final Lc/c/a/n/x/a;
.super Lc/c/a/d/f/p;
.source "SettingViewModel.kt"


# instance fields
.field public final d:Lc/c/a/c/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/c/h/g<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lc/c/a/e/d/s/c;

.field public final f:Lc/c/a/e/d/u/a;

.field public final g:Lc/c/a/p/I;

.field public final h:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/s/c;Lc/c/a/e/d/u/a;Lc/c/a/p/I;Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)V
    .locals 1

    const-string v0, "searchPredictionRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManagerScheduler"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManager"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/x/a;->e:Lc/c/a/e/d/s/c;

    iput-object p2, p0, Lc/c/a/n/x/a;->f:Lc/c/a/e/d/u/a;

    iput-object p3, p0, Lc/c/a/n/x/a;->g:Lc/c/a/p/I;

    iput-object p4, p0, Lc/c/a/n/x/a;->h:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    .line 2
    new-instance p1, Lc/c/a/c/h/g;

    invoke-direct {p1}, Lc/c/a/c/h/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/x/a;->d:Lc/c/a/c/h/g;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/x/a;)Lc/c/a/e/d/s/c;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/x/a;->e:Lc/c/a/e/d/s/c;

    return-object p0
.end method

.method public static synthetic a(Lc/c/a/n/x/a;IIIIILjava/lang/Object;)V
    .locals 2

    and-int/lit8 p6, p5, 0x1

    const/16 v0, 0xb

    if-eqz p6, :cond_0

    .line 6
    invoke-virtual {p0}, Lc/c/a/n/x/a;->m()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/16 v1, 0xc

    if-eqz p6, :cond_1

    .line 7
    invoke-virtual {p0}, Lc/c/a/n/x/a;->m()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 8
    invoke-virtual {p0}, Lc/c/a/n/x/a;->n()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 9
    invoke-virtual {p0}, Lc/c/a/n/x/a;->n()Ljava/util/Calendar;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lc/c/a/n/x/a;->a(IIII)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/x/a;Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/x/a;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/x/a;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/x/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 1

    .line 10
    iget-object v0, p0, Lc/c/a/n/x/a;->f:Lc/c/a/e/d/u/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/c/a/e/d/u/a;->a(IIII)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 7

    .line 4
    iget-object p1, p0, Lc/c/a/n/x/a;->d:Lc/c/a/c/h/g;

    new-instance v6, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p1, v6}, Lc/c/a/c/h/g;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 7

    .line 5
    iget-object p1, p0, Lc/c/a/n/x/a;->d:Lc/c/a/c/h/g;

    new-instance v6, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p1, v6}, Lc/c/a/c/h/g;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;->SINGLE_CONNECTION:Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;->PARALLEL_CONNECTION:Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    .line 3
    :goto_0
    iget-object v0, p0, Lc/c/a/n/x/a;->h:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;)V

    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/x/a;->f:Lc/c/a/e/d/u/a;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/u/a;->b(Z)V

    return-void
.end method

.method public final e(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/n/x/a;->f:Lc/c/a/e/d/u/a;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/u/a;->c(Z)V

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/x/a;->f:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->a()Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/x/a;->f:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/n/x/a;->g:Lc/c/a/p/I;

    invoke-virtual {v0}, Lc/c/a/p/I;->j()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/c/a/n/x/a;->g:Lc/c/a/p/I;

    invoke-virtual {v0}, Lc/c/a/p/I;->b()V

    :goto_0
    return-void
.end method

.method public final g()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/x/a;->d:Lc/c/a/c/h/g;

    return-object v0
.end method

.method public final h()V
    .locals 6

    .line 1
    new-instance v3, Lcom/farsitel/bazaar/ui/settings/SettingViewModel$clearSearchHistory$1;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/farsitel/bazaar/ui/settings/SettingViewModel$clearSearchHistory$1;-><init>(Lc/c/a/n/x/a;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/x/a;->k()Ljava/util/Locale;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://cafebazaar.ir/client/about/?l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "&is_internal=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/x/a;->k()Ljava/util/Locale;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://cafebazaar.ir/copyright/?l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "&is_internal=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/x/a;->f:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->n()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/x/a;->k()Ljava/util/Locale;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://cafebazaar.ir/privacy/?l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "&is_internal=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/util/Calendar;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/x/a;->f:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->q()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "Calendar.getInstance()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final n()Ljava/util/Calendar;
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/x/a;->f:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->r()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const-string v1, "currentTimeCalendar"

    .line 4
    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/x/a;->k()Ljava/util/Locale;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://cafebazaar.ir/terms/?l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "&is_internal=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/x/a;->f:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->y()Z

    move-result v0

    return v0
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/x/a;->f:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->D()V

    return-void
.end method
