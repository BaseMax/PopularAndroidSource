.class public final Lcom/koushikdutta/async/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/z$g;,
        Lcom/koushikdutta/async/z$h;,
        Lcom/koushikdutta/async/z$e;,
        Lcom/koushikdutta/async/z$b;,
        Lcom/koushikdutta/async/z$d;,
        Lcom/koushikdutta/async/z$a;,
        Lcom/koushikdutta/async/z$c;,
        Lcom/koushikdutta/async/z$i;,
        Lcom/koushikdutta/async/z$f;
    }
.end annotation


# static fields
.field static d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/koushikdutta/async/n;

.field b:Ljava/nio/ByteOrder;

.field c:Lcom/koushikdutta/async/l;

.field private e:Lcom/koushikdutta/async/z$i;

.field private f:Lcom/koushikdutta/async/z$i;

.field private g:Lcom/koushikdutta/async/z$i;

.field private h:Lcom/koushikdutta/async/z$i;

.field private i:Lcom/koushikdutta/async/z$i;

.field private j:Lcom/koushikdutta/async/z$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/z$f<",
            "[B>;"
        }
    .end annotation
.end field

.field private k:Lcom/koushikdutta/async/z$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/z$f<",
            "Lcom/koushikdutta/async/l;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/koushikdutta/async/z$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/z$f<",
            "[B>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/koushikdutta/async/z$i;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 344
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/z;->d:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/n;)V
    .locals 1

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Lcom/koushikdutta/async/z$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/z$1;-><init>(Lcom/koushikdutta/async/z;)V

    iput-object v0, p0, Lcom/koushikdutta/async/z;->e:Lcom/koushikdutta/async/z$i;

    .line 187
    new-instance v0, Lcom/koushikdutta/async/z$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/z$2;-><init>(Lcom/koushikdutta/async/z;)V

    iput-object v0, p0, Lcom/koushikdutta/async/z;->f:Lcom/koushikdutta/async/z$i;

    .line 195
    new-instance v0, Lcom/koushikdutta/async/z$3;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/z$3;-><init>(Lcom/koushikdutta/async/z;)V

    iput-object v0, p0, Lcom/koushikdutta/async/z;->g:Lcom/koushikdutta/async/z$i;

    .line 203
    new-instance v0, Lcom/koushikdutta/async/z$4;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/z$4;-><init>(Lcom/koushikdutta/async/z;)V

    iput-object v0, p0, Lcom/koushikdutta/async/z;->h:Lcom/koushikdutta/async/z$i;

    .line 211
    new-instance v0, Lcom/koushikdutta/async/z$5;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/z$5;-><init>(Lcom/koushikdutta/async/z;)V

    iput-object v0, p0, Lcom/koushikdutta/async/z;->i:Lcom/koushikdutta/async/z$i;

    .line 219
    new-instance v0, Lcom/koushikdutta/async/z$6;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/z$6;-><init>(Lcom/koushikdutta/async/z;)V

    iput-object v0, p0, Lcom/koushikdutta/async/z;->j:Lcom/koushikdutta/async/z$f;

    .line 226
    new-instance v0, Lcom/koushikdutta/async/z$7;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/z$7;-><init>(Lcom/koushikdutta/async/z;)V

    iput-object v0, p0, Lcom/koushikdutta/async/z;->k:Lcom/koushikdutta/async/z$f;

    .line 233
    new-instance v0, Lcom/koushikdutta/async/z$8;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/z$8;-><init>(Lcom/koushikdutta/async/z;)V

    iput-object v0, p0, Lcom/koushikdutta/async/z;->l:Lcom/koushikdutta/async/z$f;

    .line 241
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/z;->n:Ljava/util/ArrayList;

    .line 243
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/z;->b:Ljava/nio/ByteOrder;

    .line 327
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/z;->c:Lcom/koushikdutta/async/l;

    .line 251
    iput-object p1, p0, Lcom/koushikdutta/async/z;->a:Lcom/koushikdutta/async/n;

    .line 252
    iget-object p1, p0, Lcom/koushikdutta/async/z;->a:Lcom/koushikdutta/async/n;

    invoke-interface {p1, p0}, Lcom/koushikdutta/async/n;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    return-void
.end method

.method static a(Lcom/koushikdutta/async/ad;)Ljava/lang/reflect/Method;
    .locals 7

    .line 346
    sget-object v0, Lcom/koushikdutta/async/z;->d:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    return-object v0

    .line 350
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 351
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tap"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 352
    sget-object v0, Lcom/koushikdutta/async/z;->d:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    .line 360
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 361
    aget-object p0, p0, v2

    return-object p0

    .line 369
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "-keep class * extends com.koushikdutta.async.TapCallback {\n    *;\n}\n"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static synthetic a(Lcom/koushikdutta/async/z;)Ljava/util/ArrayList;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/koushikdutta/async/z;->n:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final noop()Lcom/koushikdutta/async/z;
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/koushikdutta/async/z;->e:Lcom/koushikdutta/async/z$i;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/koushikdutta/async/z;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;)V

    .line 331
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/z;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/z$i;

    iget v1, v1, Lcom/koushikdutta/async/z$i;->c:I

    if-lt v0, v1, :cond_1

    .line 332
    iget-object v0, p0, Lcom/koushikdutta/async/z;->c:Lcom/koushikdutta/async/l;

    iget-object v1, p0, Lcom/koushikdutta/async/z;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/l;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/l;

    .line 333
    iget-object v0, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/z$i;

    iget-object v1, p0, Lcom/koushikdutta/async/z;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {v0, p1, v1}, Lcom/koushikdutta/async/z$i;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/z$i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v1, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 337
    iget-object p1, p0, Lcom/koushikdutta/async/z;->c:Lcom/koushikdutta/async/l;

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;)V

    :cond_2
    return-void
.end method

.method public final readByte()Lcom/koushikdutta/async/z;
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/koushikdutta/async/z;->f:Lcom/koushikdutta/async/z$i;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final readByteArray(I)Lcom/koushikdutta/async/z;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/koushikdutta/async/z;->readLenByteArray()Lcom/koushikdutta/async/z;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/z;->j:Lcom/koushikdutta/async/z$f;

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/z;->readByteArray(ILcom/koushikdutta/async/z$f;)Lcom/koushikdutta/async/z;

    move-result-object p1

    return-object p1
.end method

.method public final readByteArray(ILcom/koushikdutta/async/z$f;)Lcom/koushikdutta/async/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/koushikdutta/async/z$f<",
            "[B>;)",
            "Lcom/koushikdutta/async/z;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/z$a;

    invoke-direct {v1, p1, p2}, Lcom/koushikdutta/async/z$a;-><init>(ILcom/koushikdutta/async/z$f;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final readByteBufferList(I)Lcom/koushikdutta/async/z;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/koushikdutta/async/z;->readLenByteBufferList()Lcom/koushikdutta/async/z;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/z;->k:Lcom/koushikdutta/async/z$f;

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/z;->readByteBufferList(ILcom/koushikdutta/async/z$f;)Lcom/koushikdutta/async/z;

    move-result-object p1

    return-object p1
.end method

.method public final readByteBufferList(ILcom/koushikdutta/async/z$f;)Lcom/koushikdutta/async/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/koushikdutta/async/z$f<",
            "Lcom/koushikdutta/async/l;",
            ">;)",
            "Lcom/koushikdutta/async/z;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/z$b;

    invoke-direct {v1, p1, p2}, Lcom/koushikdutta/async/z$b;-><init>(ILcom/koushikdutta/async/z$f;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final readInt()Lcom/koushikdutta/async/z;
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/koushikdutta/async/z;->h:Lcom/koushikdutta/async/z$i;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final readInt(Lcom/koushikdutta/async/z$f;)Lcom/koushikdutta/async/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/z$f<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/koushikdutta/async/z;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/z$c;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/z$c;-><init>(Lcom/koushikdutta/async/z$f;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final readLenByteArray()Lcom/koushikdutta/async/z;
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/z$d;

    iget-object v2, p0, Lcom/koushikdutta/async/z;->j:Lcom/koushikdutta/async/z$f;

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/z$d;-><init>(Lcom/koushikdutta/async/z$f;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final readLenByteBufferList()Lcom/koushikdutta/async/z;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/koushikdutta/async/z;->k:Lcom/koushikdutta/async/z$f;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/z;->readLenByteBufferList(Lcom/koushikdutta/async/z$f;)Lcom/koushikdutta/async/z;

    move-result-object v0

    return-object v0
.end method

.method public final readLenByteBufferList(Lcom/koushikdutta/async/z$f;)Lcom/koushikdutta/async/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/z$f<",
            "Lcom/koushikdutta/async/l;",
            ">;)",
            "Lcom/koushikdutta/async/z;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/z$e;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/z$e;-><init>(Lcom/koushikdutta/async/z$f;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final readLong()Lcom/koushikdutta/async/z;
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/koushikdutta/async/z;->i:Lcom/koushikdutta/async/z$i;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final readShort()Lcom/koushikdutta/async/z;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/koushikdutta/async/z;->g:Lcom/koushikdutta/async/z$i;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final readString()Lcom/koushikdutta/async/z;
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/z$d;

    iget-object v2, p0, Lcom/koushikdutta/async/z;->l:Lcom/koushikdutta/async/z$f;

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/z$d;-><init>(Lcom/koushikdutta/async/z$f;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final setOrder(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/z;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/koushikdutta/async/z;->b:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method public final tap(Lcom/koushikdutta/async/ad;)V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/z$g;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/z$g;-><init>(Lcom/koushikdutta/async/z;Lcom/koushikdutta/async/ad;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final until(BLcom/koushikdutta/async/a/d;)Lcom/koushikdutta/async/z;
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/koushikdutta/async/z;->m:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/z$h;

    invoke-direct {v1, p1, p2}, Lcom/koushikdutta/async/z$h;-><init>(BLcom/koushikdutta/async/a/d;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
