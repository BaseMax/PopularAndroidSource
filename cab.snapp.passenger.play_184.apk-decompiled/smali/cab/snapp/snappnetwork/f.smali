.class public final Lcab/snapp/snappnetwork/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcab/snapp/snappnetwork/model/f;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lokhttp3/MediaType;

.field b:Ljava/lang/String;

.field c:I

.field d:Lokhttp3/RequestBody;

.field e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Z

.field h:Z

.field i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field j:Lcab/snapp/snappnetwork/a;

.field k:Z

.field private final l:Ljava/lang/String;

.field private m:Lcab/snapp/snappnetwork/d;

.field private n:Lcab/snapp/snappnetwork/ApiServiceInterface;

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z


# direct methods
.method constructor <init>(Lcab/snapp/snappnetwork/d;ILjava/lang/String;)V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SnappNetworkRequest"

    .line 35
    iput-object v0, p0, Lcab/snapp/snappnetwork/f;->l:Ljava/lang/String;

    const-string v0, "application/json; charset=utf-8"

    .line 37
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappnetwork/f;->a:Lokhttp3/MediaType;

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcab/snapp/snappnetwork/f;->c:I

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcab/snapp/snappnetwork/f;->d:Lokhttp3/RequestBody;

    .line 46
    iput-object v1, p0, Lcab/snapp/snappnetwork/f;->e:Ljava/util/HashMap;

    .line 47
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    .line 48
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    .line 49
    iput-boolean v0, p0, Lcab/snapp/snappnetwork/f;->g:Z

    .line 50
    iput-boolean v0, p0, Lcab/snapp/snappnetwork/f;->h:Z

    .line 53
    iput-object v1, p0, Lcab/snapp/snappnetwork/f;->j:Lcab/snapp/snappnetwork/a;

    .line 61
    iput-object p1, p0, Lcab/snapp/snappnetwork/f;->m:Lcab/snapp/snappnetwork/d;

    .line 62
    iput p2, p0, Lcab/snapp/snappnetwork/f;->c:I

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1050
    iget-object p1, p1, Lcab/snapp/snappnetwork/d;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcab/snapp/snappnetwork/f;->m:Lcab/snapp/snappnetwork/d;

    .line 1055
    iget-object p1, p1, Lcab/snapp/snappnetwork/d;->b:Lcab/snapp/snappnetwork/ApiServiceInterface;

    .line 64
    iput-object p1, p0, Lcab/snapp/snappnetwork/f;->n:Lcab/snapp/snappnetwork/ApiServiceInterface;

    return-void
.end method

.method private a()Z
    .locals 3

    .line 413
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 420
    :cond_0
    iget v0, p0, Lcab/snapp/snappnetwork/f;->c:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->d:Lokhttp3/RequestBody;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->e:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 425
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->a:Lokhttp3/MediaType;

    const-string v1, "{}"

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappnetwork/f;->d:Lokhttp3/RequestBody;

    .line 430
    :cond_2
    iget-boolean v0, p0, Lcab/snapp/snappnetwork/f;->h:Z

    if-eqz v0, :cond_3

    .line 432
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->m:Lcab/snapp/snappnetwork/d;

    .line 434
    invoke-virtual {v2}, Lcab/snapp/snappnetwork/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    .line 432
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private b()Lio/reactivex/z;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->n:Lcab/snapp/snappnetwork/ApiServiceInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 515
    :cond_0
    iget v2, p0, Lcab/snapp/snappnetwork/f;->c:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    .line 566
    :cond_1
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2, v3}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performDeleteRequestObservable(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/z;

    move-result-object v1

    goto/16 :goto_0

    .line 536
    :cond_2
    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->d:Lokhttp3/RequestBody;

    if-eqz v2, :cond_3

    .line 538
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPatchRequestObservable(Ljava/lang/String;Ljava/util/Map;Lokhttp3/RequestBody;Ljava/util/Map;)Lio/reactivex/z;

    move-result-object v1

    goto/16 :goto_0

    .line 539
    :cond_3
    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->e:Ljava/util/HashMap;

    if-eqz v2, :cond_c

    .line 541
    iget-boolean v1, p0, Lcab/snapp/snappnetwork/f;->p:Z

    if-eqz v1, :cond_4

    .line 543
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPatchRequestObservableNotEncoded(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/z;

    .line 546
    :cond_4
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->n:Lcab/snapp/snappnetwork/ApiServiceInterface;

    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->e:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2, v3, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPatchRequestObservable(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/z;

    move-result-object v1

    goto :goto_0

    .line 551
    :cond_5
    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->d:Lokhttp3/RequestBody;

    if-eqz v2, :cond_6

    .line 553
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPutRequestObservable(Ljava/lang/String;Ljava/util/Map;Lokhttp3/RequestBody;Ljava/util/Map;)Lio/reactivex/z;

    move-result-object v1

    goto :goto_0

    .line 554
    :cond_6
    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->e:Ljava/util/HashMap;

    if-eqz v2, :cond_c

    .line 556
    iget-boolean v1, p0, Lcab/snapp/snappnetwork/f;->p:Z

    if-eqz v1, :cond_7

    .line 558
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPutRequestObservableNotEncoded(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/z;

    move-result-object v1

    goto :goto_0

    .line 561
    :cond_7
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPutRequestObservable(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/z;

    move-result-object v1

    goto :goto_0

    .line 521
    :cond_8
    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->d:Lokhttp3/RequestBody;

    if-eqz v2, :cond_9

    .line 523
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPostRequestObservable(Ljava/lang/String;Ljava/util/Map;Lokhttp3/RequestBody;Ljava/util/Map;)Lio/reactivex/z;

    move-result-object v1

    goto :goto_0

    .line 524
    :cond_9
    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->e:Ljava/util/HashMap;

    if-eqz v2, :cond_c

    .line 526
    iget-boolean v1, p0, Lcab/snapp/snappnetwork/f;->p:Z

    if-eqz v1, :cond_a

    .line 528
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPostRequestObservableNotEncoded(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/z;

    move-result-object v1

    goto :goto_0

    .line 531
    :cond_a
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPostRequestObservable(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/z;

    move-result-object v1

    goto :goto_0

    .line 518
    :cond_b
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2, v3}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performGetRequestObservable(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/z;

    move-result-object v1

    :cond_c
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final DELETE(Ljava/lang/String;)Lcab/snapp/snappnetwork/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 111
    iput v0, p0, Lcab/snapp/snappnetwork/f;->c:I

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final GET(Ljava/lang/String;)Lcab/snapp/snappnetwork/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 83
    iput v0, p0, Lcab/snapp/snappnetwork/f;->c:I

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final PATCH(Ljava/lang/String;)Lcab/snapp/snappnetwork/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 104
    iput v0, p0, Lcab/snapp/snappnetwork/f;->c:I

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final POST(Ljava/lang/String;)Lcab/snapp/snappnetwork/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 90
    iput v0, p0, Lcab/snapp/snappnetwork/f;->c:I

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final PUT(Ljava/lang/String;)Lcab/snapp/snappnetwork/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 97
    iput v0, p0, Lcab/snapp/snappnetwork/f;->c:I

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final addBodyParameter(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/snappnetwork/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->e:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappnetwork/f;->e:Ljava/util/HashMap;

    .line 175
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final addBodyParameter(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 158
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->e:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappnetwork/f;->e:Ljava/util/HashMap;

    .line 163
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/snappnetwork/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 211
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public final addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/snappnetwork/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    invoke-virtual {p0, p1, p2}, Lcab/snapp/snappnetwork/f;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    return-object p1
.end method

.method public final addHeaders(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 190
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public final addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/snappnetwork/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 237
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public final addQueryParameter(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    invoke-virtual {p0, p1}, Lcab/snapp/snappnetwork/f;->addQueryParameters(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    return-object p1
.end method

.method public final addQueryParameters(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public final build()Lcab/snapp/snappnetwork/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcab/snapp/snappnetwork/e<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    invoke-direct {p0}, Lcab/snapp/snappnetwork/f;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1444
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->n:Lcab/snapp/snappnetwork/ApiServiceInterface;

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 1449
    :cond_1
    iget v2, p0, Lcab/snapp/snappnetwork/f;->c:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    goto/16 :goto_0

    .line 1500
    :cond_2
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2, v3}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performDeleteRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    goto/16 :goto_0

    .line 1470
    :cond_3
    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->d:Lokhttp3/RequestBody;

    if-eqz v2, :cond_4

    .line 1472
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPatchRequest(Ljava/lang/String;Ljava/util/Map;Lokhttp3/RequestBody;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    goto/16 :goto_0

    .line 1473
    :cond_4
    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->e:Ljava/util/HashMap;

    if-eqz v2, :cond_d

    .line 1475
    iget-boolean v1, p0, Lcab/snapp/snappnetwork/f;->p:Z

    if-eqz v1, :cond_5

    .line 1477
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPatchRequestNotEncoded(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    goto/16 :goto_0

    .line 1480
    :cond_5
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPatchRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    goto :goto_0

    .line 1485
    :cond_6
    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->d:Lokhttp3/RequestBody;

    if-eqz v2, :cond_7

    .line 1487
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPutRequest(Ljava/lang/String;Ljava/util/Map;Lokhttp3/RequestBody;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    goto :goto_0

    .line 1488
    :cond_7
    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->e:Ljava/util/HashMap;

    if-eqz v2, :cond_d

    .line 1490
    iget-boolean v1, p0, Lcab/snapp/snappnetwork/f;->p:Z

    if-eqz v1, :cond_8

    .line 1492
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPutRequestNotEncoded(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    goto :goto_0

    .line 1495
    :cond_8
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPutRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    goto :goto_0

    .line 1455
    :cond_9
    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->d:Lokhttp3/RequestBody;

    if-eqz v2, :cond_a

    .line 1457
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPostRequest(Ljava/lang/String;Ljava/util/Map;Lokhttp3/RequestBody;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    goto :goto_0

    .line 1458
    :cond_a
    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->e:Ljava/util/HashMap;

    if-eqz v2, :cond_d

    .line 1460
    iget-boolean v1, p0, Lcab/snapp/snappnetwork/f;->p:Z

    if-eqz v1, :cond_b

    .line 1462
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPostRequestNotEncoded(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    goto :goto_0

    .line 1465
    :cond_b
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v3, v2, v4}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performPostRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    goto :goto_0

    .line 1452
    :cond_c
    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->f:Ljava/util/HashMap;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->o:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2, v3}, Lcab/snapp/snappnetwork/ApiServiceInterface;->performGetRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object v1

    .line 261
    :cond_d
    :goto_0
    new-instance v0, Lcab/snapp/snappnetwork/e;

    iget-object v2, p0, Lcab/snapp/snappnetwork/f;->i:Ljava/lang/Class;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f;->j:Lcab/snapp/snappnetwork/a;

    invoke-direct {v0, v1, v2, v3}, Lcab/snapp/snappnetwork/e;-><init>(Lretrofit2/Call;Ljava/lang/Class;Lcab/snapp/snappnetwork/a;)V

    return-object v0
.end method

.method public final buildObservable()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "TE;>;"
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Lcab/snapp/snappnetwork/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcab/snapp/snappnetwork/f$3;

    invoke-direct {v0, p0}, Lcab/snapp/snappnetwork/f$3;-><init>(Lcab/snapp/snappnetwork/f;)V

    invoke-static {v0}, Lio/reactivex/z;->error(Ljava/util/concurrent/Callable;)Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 336
    :cond_0
    invoke-direct {p0}, Lcab/snapp/snappnetwork/f;->b()Lio/reactivex/z;

    move-result-object v0

    if-nez v0, :cond_1

    .line 340
    new-instance v0, Lcab/snapp/snappnetwork/model/f;

    invoke-direct {v0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    invoke-static {v0}, Lio/reactivex/z;->just(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 343
    :cond_1
    new-instance v1, Lcab/snapp/snappnetwork/f$4;

    invoke-direct {v1, p0}, Lcab/snapp/snappnetwork/f$4;-><init>(Lcab/snapp/snappnetwork/f;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final buildObservableArray()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Ljava/util/ArrayList<",
            "TE;>;>;"
        }
    .end annotation

    .line 279
    invoke-direct {p0}, Lcab/snapp/snappnetwork/f;->b()Lio/reactivex/z;

    move-result-object v0

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lio/reactivex/z;->just(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 285
    :cond_0
    new-instance v1, Lcab/snapp/snappnetwork/f$2;

    invoke-direct {v1, p0}, Lcab/snapp/snappnetwork/f$2;-><init>(Lcab/snapp/snappnetwork/f;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->flatMap(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final buildObservableResponsebody()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Lcab/snapp/snappnetwork/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcab/snapp/snappnetwork/f$1;

    invoke-direct {v0, p0}, Lcab/snapp/snappnetwork/f$1;-><init>(Lcab/snapp/snappnetwork/f;)V

    invoke-static {v0}, Lio/reactivex/z;->error(Ljava/util/concurrent/Callable;)Lio/reactivex/z;

    move-result-object v0

    return-object v0

    .line 274
    :cond_0
    invoke-direct {p0}, Lcab/snapp/snappnetwork/f;->b()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final buildSingle()Lio/reactivex/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/ai<",
            "TE;>;"
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcab/snapp/snappnetwork/f;->buildObservable()Lio/reactivex/z;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/ai;->fromObservable(Lio/reactivex/ae;)Lio/reactivex/ai;

    move-result-object v0

    return-object v0
.end method

.method public final setAdditionalHeader(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    invoke-virtual {p0, p1}, Lcab/snapp/snappnetwork/f;->addHeaders(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    return-object p1
.end method

.method public final setCustomParser(Lcab/snapp/snappnetwork/a;)Lcab/snapp/snappnetwork/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/snappnetwork/a;",
            ")",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcab/snapp/snappnetwork/f;->j:Lcab/snapp/snappnetwork/a;

    return-object p0
.end method

.method public final setDontNeedAuthentication()Lcab/snapp/snappnetwork/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcab/snapp/snappnetwork/f;->h:Z

    return-object p0
.end method

.method public final setDontParse(Z)Lcab/snapp/snappnetwork/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    .line 197
    iput-boolean p1, p0, Lcab/snapp/snappnetwork/f;->k:Z

    return-object p0
.end method

.method public final setHttpVerb(I)Lcab/snapp/snappnetwork/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    .line 77
    iput p1, p0, Lcab/snapp/snappnetwork/f;->c:I

    return-object p0
.end method

.method public final setNotEncoded()Lcab/snapp/snappnetwork/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcab/snapp/snappnetwork/f;->p:Z

    return-object p0
.end method

.method public final setNotToCertificatePinning()Lcab/snapp/snappnetwork/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->m:Lcab/snapp/snappnetwork/d;

    .line 1060
    iget-object v0, v0, Lcab/snapp/snappnetwork/d;->c:Lcab/snapp/snappnetwork/ApiServiceInterface;

    .line 144
    iput-object v0, p0, Lcab/snapp/snappnetwork/f;->n:Lcab/snapp/snappnetwork/ApiServiceInterface;

    return-object p0
.end method

.method public final setPath(Ljava/lang/String;)Lcab/snapp/snappnetwork/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappnetwork/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcab/snapp/snappnetwork/model/d;",
            ">(TT;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    .line 125
    invoke-static {}, Lcab/snapp/snappnetwork/g;->provideGson()Lcom/google/gson/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/e;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcab/snapp/snappnetwork/f;->a:Lokhttp3/MediaType;

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/snappnetwork/f;->d:Lokhttp3/RequestBody;

    return-object p0
.end method

.method public final setRequestBodyHashMap(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    invoke-virtual {p0, p1}, Lcab/snapp/snappnetwork/f;->addBodyParameter(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    return-object p1
.end method
