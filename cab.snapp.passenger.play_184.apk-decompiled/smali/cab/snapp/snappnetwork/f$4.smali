.class final Lcab/snapp/snappnetwork/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappnetwork/f;->buildObservable()Lio/reactivex/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/e/h<",
        "Lokhttp3/ResponseBody;",
        "Lio/reactivex/ae<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappnetwork/f;


# direct methods
.method constructor <init>(Lcab/snapp/snappnetwork/f;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcab/snapp/snappnetwork/f$4;->a:Lcab/snapp/snappnetwork/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lokhttp3/ResponseBody;)Lio/reactivex/ae;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")",
            "Lio/reactivex/ae<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 351
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 352
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 354
    iget-object v0, p0, Lcab/snapp/snappnetwork/f$4;->a:Lcab/snapp/snappnetwork/f;

    .line 1032
    iget-boolean v0, v0, Lcab/snapp/snappnetwork/f;->k:Z

    if-eqz v0, :cond_0

    .line 356
    invoke-static {}, Lcab/snapp/snappnetwork/g;->provideGsonBuilder()Lcom/google/gson/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/f;->create()Lcom/google/gson/e;

    move-result-object v0

    .line 357
    new-instance v1, Lcab/snapp/snappnetwork/f$4$1;

    invoke-direct {v1, p0}, Lcab/snapp/snappnetwork/f$4$1;-><init>(Lcab/snapp/snappnetwork/f$4;)V

    .line 359
    invoke-virtual {v1}, Lcab/snapp/snappnetwork/f$4$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 357
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/snappnetwork/model/f;

    .line 360
    invoke-static {p1}, Lio/reactivex/z;->just(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 361
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappnetwork/f$4;->a:Lcab/snapp/snappnetwork/f;

    .line 2032
    iget-object v0, v0, Lcab/snapp/snappnetwork/f;->j:Lcab/snapp/snappnetwork/a;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcab/snapp/snappnetwork/f$4;->a:Lcab/snapp/snappnetwork/f;

    .line 3032
    iget-object v0, v0, Lcab/snapp/snappnetwork/f;->j:Lcab/snapp/snappnetwork/a;

    .line 363
    iget-object v1, p0, Lcab/snapp/snappnetwork/f$4;->a:Lcab/snapp/snappnetwork/f;

    iget-object v1, v1, Lcab/snapp/snappnetwork/f;->i:Ljava/lang/Class;

    invoke-interface {v0, v1, p1}, Lcab/snapp/snappnetwork/a;->parseData(Ljava/lang/Class;Ljava/lang/String;)Lcab/snapp/snappnetwork/model/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {v0}, Lcab/snapp/snappnetwork/model/f;->getRawResponse()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 366
    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/model/f;->setRawResponse(Ljava/lang/String;)V

    .line 367
    invoke-static {v0}, Lio/reactivex/z;->just(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 370
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Custom parser returned null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/z;->error(Ljava/lang/Throwable;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 374
    :cond_2
    invoke-static {}, Lcab/snapp/snappnetwork/g;->provideGsonBuilder()Lcom/google/gson/f;

    move-result-object v0

    const-class v1, Lcab/snapp/snappnetwork/model/e;

    new-instance v2, Lcab/snapp/snappnetwork/model/SnappResponseTypeAdapter;

    iget-object v3, p0, Lcab/snapp/snappnetwork/f$4;->a:Lcab/snapp/snappnetwork/f;

    iget-object v3, v3, Lcab/snapp/snappnetwork/f;->i:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcab/snapp/snappnetwork/model/SnappResponseTypeAdapter;-><init>(Ljava/lang/Class;)V

    .line 375
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/f;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/f;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/google/gson/f;->create()Lcom/google/gson/e;

    move-result-object v0

    .line 381
    const-class v1, Lcab/snapp/snappnetwork/model/e;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/snappnetwork/model/e;

    .line 385
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/e;->getSnappResponseModel()Lcab/snapp/snappnetwork/model/f;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/z;->just(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 389
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "There where error in response body!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/z;->error(Ljava/lang/Throwable;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 396
    invoke-static {p1}, Lio/reactivex/z;->error(Ljava/lang/Throwable;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 345
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcab/snapp/snappnetwork/f$4;->apply(Lokhttp3/ResponseBody;)Lio/reactivex/ae;

    move-result-object p1

    return-object p1
.end method
