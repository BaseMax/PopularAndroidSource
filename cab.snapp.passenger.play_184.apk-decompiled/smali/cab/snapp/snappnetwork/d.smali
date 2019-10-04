.class public final Lcab/snapp/snappnetwork/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field b:Lcab/snapp/snappnetwork/ApiServiceInterface;

.field c:Lcab/snapp/snappnetwork/ApiServiceInterface;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcab/snapp/snappnetwork/c;

.field private f:Lcab/snapp/snappnetwork/a;

.field private g:Z


# direct methods
.method constructor <init>(Lcab/snapp/snappnetwork/c;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/snappnetwork/c;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcab/snapp/snappnetwork/d;->f:Lcab/snapp/snappnetwork/a;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcab/snapp/snappnetwork/d;->g:Z

    const/4 v1, 0x1

    .line 35
    invoke-virtual {p1, v1}, Lcab/snapp/snappnetwork/c;->getRestClient(Z)Lcab/snapp/snappnetwork/ApiServiceInterface;

    move-result-object v1

    iput-object v1, p0, Lcab/snapp/snappnetwork/d;->b:Lcab/snapp/snappnetwork/ApiServiceInterface;

    .line 36
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/c;->getRestClient(Z)Lcab/snapp/snappnetwork/ApiServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappnetwork/d;->c:Lcab/snapp/snappnetwork/ApiServiceInterface;

    .line 38
    iput-object p1, p0, Lcab/snapp/snappnetwork/d;->e:Lcab/snapp/snappnetwork/c;

    .line 39
    iput-object p2, p0, Lcab/snapp/snappnetwork/d;->a:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcab/snapp/snappnetwork/d;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final DELETE(Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcab/snapp/snappnetwork/model/f;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    const-string v0, ""

    .line 189
    invoke-virtual {p0, v0, p1}, Lcab/snapp/snappnetwork/d;->DELETE(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-boolean v0, p0, Lcab/snapp/snappnetwork/d;->g:Z

    .line 190
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setDontParse(Z)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/snappnetwork/d;->f:Lcab/snapp/snappnetwork/a;

    .line 191
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setCustomParser(Lcab/snapp/snappnetwork/a;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    return-object p1
.end method

.method public final DELETE(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcab/snapp/snappnetwork/model/f;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    .line 201
    new-instance v0, Lcab/snapp/snappnetwork/f;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1}, Lcab/snapp/snappnetwork/f;-><init>(Lcab/snapp/snappnetwork/d;ILjava/lang/String;)V

    iget-object p1, p0, Lcab/snapp/snappnetwork/d;->d:Ljava/util/HashMap;

    .line 202
    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/f;->addHeaders(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/snappnetwork/d;->f:Lcab/snapp/snappnetwork/a;

    .line 203
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setCustomParser(Lcab/snapp/snappnetwork/a;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-boolean v0, p0, Lcab/snapp/snappnetwork/d;->g:Z

    .line 204
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setDontParse(Z)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 5132
    iput-object p2, p1, Lcab/snapp/snappnetwork/f;->i:Ljava/lang/Class;

    return-object p1
.end method

.method public final GET(Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcab/snapp/snappnetwork/model/f;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    const-string v0, ""

    .line 87
    invoke-virtual {p0, v0, p1}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-boolean v0, p0, Lcab/snapp/snappnetwork/d;->g:Z

    .line 88
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setDontParse(Z)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/snappnetwork/d;->f:Lcab/snapp/snappnetwork/a;

    .line 89
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setCustomParser(Lcab/snapp/snappnetwork/a;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    return-object p1
.end method

.method public final GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcab/snapp/snappnetwork/model/f;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcab/snapp/snappnetwork/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcab/snapp/snappnetwork/f;-><init>(Lcab/snapp/snappnetwork/d;ILjava/lang/String;)V

    iget-object p1, p0, Lcab/snapp/snappnetwork/d;->d:Ljava/util/HashMap;

    .line 100
    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/f;->addHeaders(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/snappnetwork/d;->f:Lcab/snapp/snappnetwork/a;

    .line 101
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setCustomParser(Lcab/snapp/snappnetwork/a;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-boolean v0, p0, Lcab/snapp/snappnetwork/d;->g:Z

    .line 102
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setDontParse(Z)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1132
    iput-object p2, p1, Lcab/snapp/snappnetwork/f;->i:Ljava/lang/Class;

    return-object p1
.end method

.method public final PATCH(Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcab/snapp/snappnetwork/model/f;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    const-string v0, ""

    .line 163
    invoke-virtual {p0, v0, p1}, Lcab/snapp/snappnetwork/d;->PATCH(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-boolean v0, p0, Lcab/snapp/snappnetwork/d;->g:Z

    .line 164
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setDontParse(Z)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/snappnetwork/d;->f:Lcab/snapp/snappnetwork/a;

    .line 165
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setCustomParser(Lcab/snapp/snappnetwork/a;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    return-object p1
.end method

.method public final PATCH(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcab/snapp/snappnetwork/model/f;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    .line 175
    new-instance v0, Lcab/snapp/snappnetwork/f;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1}, Lcab/snapp/snappnetwork/f;-><init>(Lcab/snapp/snappnetwork/d;ILjava/lang/String;)V

    iget-object p1, p0, Lcab/snapp/snappnetwork/d;->d:Ljava/util/HashMap;

    .line 176
    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/f;->addHeaders(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/snappnetwork/d;->f:Lcab/snapp/snappnetwork/a;

    .line 177
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setCustomParser(Lcab/snapp/snappnetwork/a;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-boolean v0, p0, Lcab/snapp/snappnetwork/d;->g:Z

    .line 178
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setDontParse(Z)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 4132
    iput-object p2, p1, Lcab/snapp/snappnetwork/f;->i:Ljava/lang/Class;

    return-object p1
.end method

.method public final POST(Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcab/snapp/snappnetwork/model/f;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    const-string v0, ""

    .line 113
    invoke-virtual {p0, v0, p1}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/snappnetwork/d;->f:Lcab/snapp/snappnetwork/a;

    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setCustomParser(Lcab/snapp/snappnetwork/a;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    return-object p1
.end method

.method public final POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcab/snapp/snappnetwork/model/f;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    .line 123
    new-instance v0, Lcab/snapp/snappnetwork/f;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Lcab/snapp/snappnetwork/f;-><init>(Lcab/snapp/snappnetwork/d;ILjava/lang/String;)V

    iget-object p1, p0, Lcab/snapp/snappnetwork/d;->d:Ljava/util/HashMap;

    .line 124
    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/f;->addHeaders(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/snappnetwork/d;->f:Lcab/snapp/snappnetwork/a;

    .line 125
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setCustomParser(Lcab/snapp/snappnetwork/a;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-boolean v0, p0, Lcab/snapp/snappnetwork/d;->g:Z

    .line 126
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setDontParse(Z)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 2132
    iput-object p2, p1, Lcab/snapp/snappnetwork/f;->i:Ljava/lang/Class;

    return-object p1
.end method

.method public final PUT(Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcab/snapp/snappnetwork/model/f;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    const-string v0, ""

    .line 137
    invoke-virtual {p0, v0, p1}, Lcab/snapp/snappnetwork/d;->PUT(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-boolean v0, p0, Lcab/snapp/snappnetwork/d;->g:Z

    .line 138
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setDontParse(Z)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/snappnetwork/d;->f:Lcab/snapp/snappnetwork/a;

    .line 139
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setCustomParser(Lcab/snapp/snappnetwork/a;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    return-object p1
.end method

.method public final PUT(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcab/snapp/snappnetwork/model/f;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcab/snapp/snappnetwork/f<",
            "TE;>;"
        }
    .end annotation

    .line 149
    new-instance v0, Lcab/snapp/snappnetwork/f;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1}, Lcab/snapp/snappnetwork/f;-><init>(Lcab/snapp/snappnetwork/d;ILjava/lang/String;)V

    iget-object p1, p0, Lcab/snapp/snappnetwork/d;->d:Ljava/util/HashMap;

    .line 150
    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/f;->addHeaders(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/snappnetwork/d;->f:Lcab/snapp/snappnetwork/a;

    .line 151
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setCustomParser(Lcab/snapp/snappnetwork/a;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    iget-boolean v0, p0, Lcab/snapp/snappnetwork/d;->g:Z

    .line 152
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setDontParse(Z)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 3132
    iput-object p2, p1, Lcab/snapp/snappnetwork/f;->i:Ljava/lang/Class;

    return-object p1
.end method

.method final a()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcab/snapp/snappnetwork/d;->e:Lcab/snapp/snappnetwork/c;

    invoke-virtual {v0}, Lcab/snapp/snappnetwork/c;->getRefreshTokenAuthenticator()Lcab/snapp/snappnetwork/h;

    move-result-object v0

    invoke-interface {v0}, Lcab/snapp/snappnetwork/h;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setCustomParser(Lcab/snapp/snappnetwork/a;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcab/snapp/snappnetwork/d;->f:Lcab/snapp/snappnetwork/a;

    return-void
.end method

.method public final setDontParse(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcab/snapp/snappnetwork/d;->g:Z

    return-void
.end method
