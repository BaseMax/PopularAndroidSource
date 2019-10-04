.class final Lcab/snapp/snappnetwork/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/e/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappnetwork/f;->buildObservableArray()Lio/reactivex/z;
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
        "Ljava/util/ArrayList<",
        "TE;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappnetwork/f;


# direct methods
.method constructor <init>(Lcab/snapp/snappnetwork/f;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcab/snapp/snappnetwork/f$2;->a:Lcab/snapp/snappnetwork/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lokhttp3/ResponseBody;)Lio/reactivex/ae;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")",
            "Lio/reactivex/ae<",
            "Ljava/util/ArrayList<",
            "TE;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-static {}, Lcab/snapp/snappnetwork/g;->provideGsonBuilder()Lcom/google/gson/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/f;->create()Lcom/google/gson/e;

    move-result-object v0

    .line 296
    new-instance v1, Lcab/snapp/snappnetwork/f$2$1;

    invoke-direct {v1, p0}, Lcab/snapp/snappnetwork/f$2$1;-><init>(Lcab/snapp/snappnetwork/f$2;)V

    .line 298
    invoke-virtual {v1}, Lcab/snapp/snappnetwork/f$2$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 299
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/e;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 303
    invoke-static {p1}, Lio/reactivex/z;->just(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object p1

    return-object p1

    .line 306
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "body was null!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/z;->error(Ljava/lang/Throwable;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 311
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

    .line 286
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcab/snapp/snappnetwork/f$2;->apply(Lokhttp3/ResponseBody;)Lio/reactivex/ae;

    move-result-object p1

    return-object p1
.end method
