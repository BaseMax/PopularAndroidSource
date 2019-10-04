.class public final Lcom/a/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/a/a/a/b;

.field private b:Lcom/a/a/b/c;

.field private c:Lcom/a/a/c/j;

.field private d:Lcom/a/a/c/j$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized a()Lcom/a/a/c/j$a;
    .locals 1

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a$a;->d:Lcom/a/a/c/j$a;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/a/a/c/j$a;

    invoke-direct {v0}, Lcom/a/a/c/j$a;-><init>()V

    iput-object v0, p0, Lcom/a/a/a$a;->d:Lcom/a/a/c/j$a;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/a/a/a$a;->d:Lcom/a/a/c/j$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final answers(Lcom/a/a/a/b;)Lcom/a/a/a$a;
    .locals 1

    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/a/a/a$a;->a:Lcom/a/a/a/b;

    if-nez v0, :cond_0

    .line 100
    iput-object p1, p0, Lcom/a/a/a$a;->a:Lcom/a/a/a/b;

    return-object p0

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Answers Kit already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Answers Kit must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final beta(Lcom/a/a/b/c;)Lcom/a/a/a$a;
    .locals 1

    if-eqz p1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/a/a/a$a;->b:Lcom/a/a/b/c;

    if-nez v0, :cond_0

    .line 113
    iput-object p1, p0, Lcom/a/a/a$a;->b:Lcom/a/a/b/c;

    return-object p0

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Beta Kit already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Beta Kit must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final build()Lcom/a/a/a;
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/a/a/a$a;->d:Lcom/a/a/c/j$a;

    if-eqz v0, :cond_1

    .line 132
    iget-object v1, p0, Lcom/a/a/a$a;->c:Lcom/a/a/c/j;

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/a/a/c/j$a;->build()Lcom/a/a/c/j;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a$a;->c:Lcom/a/a/c/j;

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not use Deprecated methods delay(), disabled(), listener(), pinningInfoProvider() with core()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/a/a/a$a;->a:Lcom/a/a/a/b;

    if-nez v0, :cond_2

    .line 141
    new-instance v0, Lcom/a/a/a/b;

    invoke-direct {v0}, Lcom/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/a/a/a$a;->a:Lcom/a/a/a/b;

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/a/a/a$a;->b:Lcom/a/a/b/c;

    if-nez v0, :cond_3

    .line 145
    new-instance v0, Lcom/a/a/b/c;

    invoke-direct {v0}, Lcom/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/a/a/a$a;->b:Lcom/a/a/b/c;

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/a/a/a$a;->c:Lcom/a/a/c/j;

    if-nez v0, :cond_4

    .line 149
    new-instance v0, Lcom/a/a/c/j;

    invoke-direct {v0}, Lcom/a/a/c/j;-><init>()V

    iput-object v0, p0, Lcom/a/a/a$a;->c:Lcom/a/a/c/j;

    .line 152
    :cond_4
    new-instance v0, Lcom/a/a/a;

    iget-object v1, p0, Lcom/a/a/a$a;->a:Lcom/a/a/a/b;

    iget-object v2, p0, Lcom/a/a/a$a;->b:Lcom/a/a/b/c;

    iget-object v3, p0, Lcom/a/a/a$a;->c:Lcom/a/a/c/j;

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/a;-><init>(Lcom/a/a/a/b;Lcom/a/a/b/c;Lcom/a/a/c/j;)V

    return-object v0
.end method

.method public final core(Lcom/a/a/c/j;)Lcom/a/a/a$a;
    .locals 1

    if-eqz p1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/a/a/a$a;->c:Lcom/a/a/c/j;

    if-nez v0, :cond_0

    .line 126
    iput-object p1, p0, Lcom/a/a/a$a;->c:Lcom/a/a/c/j;

    return-object p0

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CrashlyticsCore Kit already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "CrashlyticsCore Kit must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final delay(F)Lcom/a/a/a$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/a/a/a$a;->a()Lcom/a/a/c/j$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/c/j$a;->delay(F)Lcom/a/a/c/j$a;

    return-object p0
.end method

.method public final disabled(Z)Lcom/a/a/a$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/a/a/a$a;->a()Lcom/a/a/c/j$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/c/j$a;->disabled(Z)Lcom/a/a/c/j$a;

    return-object p0
.end method

.method public final listener(Lcom/a/a/c/l;)Lcom/a/a/a$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/a/a/a$a;->a()Lcom/a/a/c/j$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/c/j$a;->listener(Lcom/a/a/c/l;)Lcom/a/a/c/j$a;

    return-object p0
.end method

.method public final pinningInfo(Lcom/a/a/c/ab;)Lcom/a/a/a$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/a/a/a$a;->a()Lcom/a/a/c/j$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/c/j$a;->pinningInfo(Lcom/a/a/c/ab;)Lcom/a/a/c/j$a;

    return-object p0
.end method
