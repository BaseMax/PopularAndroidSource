.class public Lcab/snapp/passenger/f/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcab/snapp/passenger/f/b/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/f/b/a;->a:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcab/snapp/passenger/f/b/a;->b:Z

    return-void
.end method


# virtual methods
.method public addProvider(Ljava/lang/String;Lcab/snapp/passenger/f/b/c/a;)Lcab/snapp/passenger/f/b/a;
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcab/snapp/passenger/f/b/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "<reportProvider> and <reportProviderKey> cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getProvider(Ljava/lang/String;)Lcab/snapp/passenger/f/b/c/a;
    .locals 2

    .line 111
    iget-object v0, p0, Lcab/snapp/passenger/f/b/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/f/b/c/a;

    if-eqz v0, :cond_0

    return-object v0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "There is no provider added with the reportingProviderKey: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasProvider(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcab/snapp/passenger/f/b/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "<reportingProviderKey> is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEnabled()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcab/snapp/passenger/f/b/a;->b:Z

    return v0
.end method

.method public release()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcab/snapp/passenger/f/b/a;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcab/snapp/passenger/f/b/a;->a:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method public removeProvider(Ljava/lang/String;)Lcab/snapp/passenger/f/b/a;
    .locals 1

    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcab/snapp/passenger/f/b/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "<reportingProviderKey> is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendEvent(Ljava/lang/String;Lcab/snapp/passenger/f/b/c/b;)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 140
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/f/b/a;->getProvider(Ljava/lang/String;)Lcab/snapp/passenger/f/b/c/a;

    move-result-object p1

    .line 1153
    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    invoke-interface {p1, p2}, Lcab/snapp/passenger/f/b/c/a;->getHandlerForEvent(Lcab/snapp/passenger/f/b/c/b;)Lcab/snapp/passenger/f/b/c/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1162
    invoke-interface {p1}, Lcab/snapp/passenger/f/b/c/c;->sendEvent()V

    :cond_0
    return-void

    .line 137
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "<reportingEvent> is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "<reportingProviderKey> is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcab/snapp/passenger/f/b/a;->b:Z

    return-void
.end method
