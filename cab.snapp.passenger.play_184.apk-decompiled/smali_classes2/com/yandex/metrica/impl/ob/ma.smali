.class public Lcom/yandex/metrica/impl/ob/ma;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ma$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Lcom/yandex/metrica/impl/ob/lp;

.field public final n:Lcom/yandex/metrica/impl/ob/hq;

.field public final o:Lcom/yandex/metrica/impl/ob/hl;

.field public final p:Lcom/yandex/metrica/impl/ob/lr;

.field public final q:Ljava/lang/String;

.field public final r:J

.field public final s:Z

.field public final t:Z

.field public final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/bq$a;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/lang/String;

.field public final w:Lcom/yandex/metrica/impl/ob/mc;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/ma$a;)V
    .locals 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->a:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->b:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->c:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->d:Ljava/util/List;

    .line 70
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->e:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->f:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->g:Ljava/util/List;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->g:Ljava/util/List;

    .line 73
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->h:Ljava/util/List;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->h:Ljava/util/List;

    .line 74
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->h:Ljava/util/List;

    .line 75
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->i:Ljava/util/List;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->i:Ljava/util/List;

    .line 76
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->i:Ljava/util/List;

    .line 77
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->j:Ljava/util/List;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    :cond_4
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->j:Ljava/util/List;

    .line 78
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->j:Ljava/util/List;

    .line 79
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->k:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->l:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->m:Lcom/yandex/metrica/impl/ob/lp;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->m:Lcom/yandex/metrica/impl/ob/lp;

    .line 82
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->n:Lcom/yandex/metrica/impl/ob/hq;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->n:Lcom/yandex/metrica/impl/ob/hq;

    .line 83
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->o:Lcom/yandex/metrica/impl/ob/hl;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->o:Lcom/yandex/metrica/impl/ob/hl;

    .line 84
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->p:Lcom/yandex/metrica/impl/ob/lr;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->p:Lcom/yandex/metrica/impl/ob/lr;

    .line 85
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->q:Ljava/lang/String;

    .line 86
    iget-wide v2, p1, Lcom/yandex/metrica/impl/ob/ma$a;->q:J

    iput-wide v2, p0, Lcom/yandex/metrica/impl/ob/ma;->r:J

    .line 87
    iget-boolean v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->r:Z

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ma;->s:Z

    .line 88
    iget-boolean v0, p1, Lcom/yandex/metrica/impl/ob/ma$a;->t:Z

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ma;->t:Z

    .line 89
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/ma$a;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/ma$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_5
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->u:Ljava/util/List;

    .line 90
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ma$a;->b(Lcom/yandex/metrica/impl/ob/ma$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ma;->v:Ljava/lang/String;

    .line 91
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/ma$a;->u:Lcom/yandex/metrica/impl/ob/mc;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ma;->w:Lcom/yandex/metrica/impl/ob/mc;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/ma$a;B)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ma;-><init>(Lcom/yandex/metrica/impl/ob/ma$a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/ma$a;
    .locals 4

    .line 95
    new-instance v0, Lcom/yandex/metrica/impl/ob/ma$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->m:Lcom/yandex/metrica/impl/ob/lp;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;-><init>(Lcom/yandex/metrica/impl/ob/lp;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->a:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/hb;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ma;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/hb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/hb;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->h:Ljava/util/List;

    .line 98
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->c(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->i:Ljava/util/List;

    .line 99
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->d(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->k:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->d:Ljava/util/List;

    .line 101
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->g:Ljava/util/List;

    .line 102
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->b(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->e:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->f:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->j:Ljava/util/List;

    .line 105
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->e(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->q:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->n:Lcom/yandex/metrica/impl/ob/hq;

    .line 107
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/hq;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->o:Lcom/yandex/metrica/impl/ob/hl;

    .line 108
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/hl;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->p:Lcom/yandex/metrica/impl/ob/lr;

    .line 109
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/lr;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->l:Ljava/lang/String;

    .line 110
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/ma;->t:Z

    .line 111
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->b(Z)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ma;->r:J

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ma$a;->a(J)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/ma;->s:Z

    .line 113
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Z)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->u:Ljava/util/List;

    .line 114
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->f(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->v:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->g(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->w:Lcom/yandex/metrica/impl/ob/mc;

    .line 116
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ma$a;->a(Lcom/yandex/metrica/impl/ob/mc;)Lcom/yandex/metrica/impl/ob/ma$a;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StartupState{uuid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceIDHash=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", reportUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->d:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", getAdUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", reportAdUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", locationUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->g:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", hostUrlsFromStartup="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->h:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", hostUrlsFromClient="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->i:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", diagnosticUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->j:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", encodedClidsFromResponse=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lastStartupRequestClids=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", collectingFlags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->m:Lcom/yandex/metrica/impl/ob/lp;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", foregroundLocationCollectionConfig="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->n:Lcom/yandex/metrica/impl/ob/hq;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", backgroundLocationCollectionConfig="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->o:Lcom/yandex/metrica/impl/ob/hl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", socketConfig="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->p:Lcom/yandex/metrica/impl/ob/lr;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", distributionReferrer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", obtainTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/ma;->r:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", hadFirstStartup="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/ma;->s:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", startupClidsMatchWithAppClids="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/ma;->t:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", requests="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->u:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", countryInit=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ma;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", statSending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ma;->w:Lcom/yandex/metrica/impl/ob/mc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
