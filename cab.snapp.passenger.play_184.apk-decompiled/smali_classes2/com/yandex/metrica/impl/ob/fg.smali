.class public Lcom/yandex/metrica/impl/ob/fg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/fg$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/yandex/metrica/impl/ob/fg;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Lcom/yandex/metrica/impl/ob/fh;

.field private d:Lcom/yandex/metrica/impl/ob/fg$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/fg;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 89
    new-instance v0, Lcom/yandex/metrica/impl/ob/fh;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/fh;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/fg;-><init>(Lcom/yandex/metrica/impl/ob/fh;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/fh;)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fg;->c:Lcom/yandex/metrica/impl/ob/fh;

    .line 111
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fg;->c:Lcom/yandex/metrica/impl/ob/fh;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/fh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 115
    :try_start_0
    new-instance v1, Lorg/a/a;

    invoke-direct {v1, p1}, Lorg/a/a;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance p1, Lcom/yandex/metrica/impl/ob/fg$a;

    invoke-direct {p1, v1}, Lcom/yandex/metrica/impl/ob/fg$a;-><init>(Lorg/a/a;)V
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 122
    new-instance p1, Lcom/yandex/metrica/impl/ob/fg$a;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/fg$a;-><init>()V

    .line 124
    :cond_1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fg;->d:Lcom/yandex/metrica/impl/ob/fg$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fg;
    .locals 2

    .line 72
    sget-object v0, Lcom/yandex/metrica/impl/ob/fg;->a:Lcom/yandex/metrica/impl/ob/fg;

    if-nez v0, :cond_1

    .line 73
    sget-object v0, Lcom/yandex/metrica/impl/ob/fg;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/fg;->a:Lcom/yandex/metrica/impl/ob/fg;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/yandex/metrica/impl/ob/fg;

    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/fg;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yandex/metrica/impl/ob/fg;->a:Lcom/yandex/metrica/impl/ob/fg;

    .line 77
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 79
    :cond_1
    :goto_0
    sget-object p0, Lcom/yandex/metrica/impl/ob/fg;->a:Lcom/yandex/metrica/impl/ob/fg;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ff;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fg;->d:Lcom/yandex/metrica/impl/ob/fg$a;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/fg$a;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ff;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/yandex/metrica/impl/ob/ff;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fg;->d:Lcom/yandex/metrica/impl/ob/fg$a;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/fg$a;->a(Lcom/yandex/metrica/impl/ob/ff;)V

    .line 1103
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fg;->d:Lcom/yandex/metrica/impl/ob/fg$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fg$a;->a()Lorg/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/a/a;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1105
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fg;->c:Lcom/yandex/metrica/impl/ob/fh;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/fh;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/fh;

    return-void
.end method
