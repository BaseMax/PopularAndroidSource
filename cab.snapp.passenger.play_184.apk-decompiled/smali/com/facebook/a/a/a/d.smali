.class public final Lcom/facebook/a/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/crypto/b/a;


# instance fields
.field protected a:[B

.field protected b:Z

.field protected c:[B

.field protected d:Z

.field private final e:Lcom/facebook/crypto/CryptoConfig;

.field private final f:Landroid/content/SharedPreferences;

.field private final g:Lcom/facebook/a/a/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    sget-object v0, Lcom/facebook/crypto/CryptoConfig;->KEY_128:Lcom/facebook/crypto/CryptoConfig;

    invoke-direct {p0, p1, v0}, Lcom/facebook/a/a/a/d;-><init>(Landroid/content/Context;Lcom/facebook/crypto/CryptoConfig;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/crypto/CryptoConfig;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    sget-object v0, Lcom/facebook/crypto/CryptoConfig;->KEY_128:Lcom/facebook/crypto/CryptoConfig;

    if-ne p2, v0, :cond_0

    const-string v0, "crypto"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "crypto."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1081
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/a/a/a/d;->f:Landroid/content/SharedPreferences;

    .line 66
    new-instance p1, Lcom/facebook/a/a/a/b;

    invoke-direct {p1}, Lcom/facebook/a/a/a/b;-><init>()V

    iput-object p1, p0, Lcom/facebook/a/a/a/d;->g:Lcom/facebook/a/a/a/b;

    .line 67
    iput-object p2, p0, Lcom/facebook/a/a/a/d;->e:Lcom/facebook/crypto/CryptoConfig;

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 160
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/a/b;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/facebook/a/a/a/d;->f:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/facebook/a/a/a/d;->b(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    .line 137
    :cond_0
    invoke-static {v0}, Lcom/facebook/a/a/a/d;->a(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/a/b;
        }
    .end annotation

    .line 142
    new-array p2, p2, [B

    .line 143
    iget-object v0, p0, Lcom/facebook/a/a/a/d;->g:Lcom/facebook/a/a/a/b;

    invoke-virtual {v0, p2}, Lcom/facebook/a/a/a/b;->nextBytes([B)V

    .line 145
    iget-object v0, p0, Lcom/facebook/a/a/a/d;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 1170
    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p2
.end method


# virtual methods
.method public final declared-synchronized destroyKeys()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 112
    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/a/a/a/d;->b:Z

    .line 113
    iput-boolean v0, p0, Lcom/facebook/a/a/a/d;->d:Z

    .line 114
    iget-object v1, p0, Lcom/facebook/a/a/a/d;->a:[B

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/facebook/a/a/a/d;->a:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/facebook/a/a/a/d;->c:[B

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/facebook/a/a/a/d;->c:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_1
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/facebook/a/a/a/d;->a:[B

    .line 121
    iput-object v0, p0, Lcom/facebook/a/a/a/d;->c:[B

    .line 122
    iget-object v0, p0, Lcom/facebook/a/a/a/d;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cipher_key"

    .line 123
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "mac_key"

    .line 124
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCipherKey()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/a/b;
        }
    .end annotation

    monitor-enter p0

    .line 87
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/a/a/a/d;->b:Z

    if-nez v0, :cond_0

    const-string v0, "cipher_key"

    .line 88
    iget-object v1, p0, Lcom/facebook/a/a/a/d;->e:Lcom/facebook/crypto/CryptoConfig;

    iget v1, v1, Lcom/facebook/crypto/CryptoConfig;->keyLength:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/a/a/a/d;->a(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/a/a/d;->a:[B

    :cond_0
    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/facebook/a/a/a/d;->b:Z

    .line 91
    iget-object v0, p0, Lcom/facebook/a/a/a/d;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getMacKey()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/a/b;
        }
    .end annotation

    .line 96
    iget-boolean v0, p0, Lcom/facebook/a/a/a/d;->d:Z

    if-nez v0, :cond_0

    const/16 v0, 0x40

    const-string v1, "mac_key"

    .line 97
    invoke-direct {p0, v1, v0}, Lcom/facebook/a/a/a/d;->a(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a/a/a/d;->c:[B

    :cond_0
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/facebook/a/a/a/d;->d:Z

    .line 100
    iget-object v0, p0, Lcom/facebook/a/a/a/d;->c:[B

    return-object v0
.end method

.method public final getNewIV()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/crypto/a/b;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/facebook/a/a/a/d;->e:Lcom/facebook/crypto/CryptoConfig;

    iget v0, v0, Lcom/facebook/crypto/CryptoConfig;->ivLength:I

    new-array v0, v0, [B

    .line 106
    iget-object v1, p0, Lcom/facebook/a/a/a/d;->g:Lcom/facebook/a/a/a/b;

    invoke-virtual {v1, v0}, Lcom/facebook/a/a/a/b;->nextBytes([B)V

    return-object v0
.end method
