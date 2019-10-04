.class public Lcom/yandex/metrica/impl/ob/ki$a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ki$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ki$a$b$a;
    }
.end annotation


# instance fields
.field a:[B

.field b:[B

.field private final c:Lcom/yandex/metrica/impl/ob/ki$a$a;

.field private d:Lcom/yandex/metrica/impl/ob/ki$a$b$a;

.field private e:Lcom/yandex/metrica/impl/av$a;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ki$a$a;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->c:Lcom/yandex/metrica/impl/ob/ki$a$a;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/ki$a$b;)Lcom/yandex/metrica/impl/ob/ki$a$a;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->c:Lcom/yandex/metrica/impl/ob/ki$a$a;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/ki$a$a;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->c:Lcom/yandex/metrica/impl/ob/ki$a$a;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/av$a;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->e:Lcom/yandex/metrica/impl/av$a;

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/ki$a$b$a;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->d:Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->h:Ljava/lang/Exception;

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->f:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->g:Ljava/util/Map;

    return-void
.end method

.method public a([B)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->a:[B

    return-void
.end method

.method public b()Lcom/yandex/metrica/impl/ob/ki$a$b$a;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->d:Lcom/yandex/metrica/impl/ob/ki$a$b$a;

    return-object v0
.end method

.method public b([B)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->b:[B

    return-void
.end method

.method public c()Lcom/yandex/metrica/impl/av$a;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->e:Lcom/yandex/metrica/impl/av$a;

    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public e()[B
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->a:[B

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->g:Ljava/util/Map;

    return-object v0
.end method

.method public g()Ljava/lang/Exception;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->h:Ljava/lang/Exception;

    return-object v0
.end method

.method public h()[B
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ki$a$b;->b:[B

    return-object v0
.end method
