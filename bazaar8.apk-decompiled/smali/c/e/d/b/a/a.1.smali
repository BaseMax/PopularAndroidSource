.class public final Lc/e/d/b/a/a;
.super Lc/e/d/x;
.source "ArrayTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc/e/d/x<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/e/d/y;


# instance fields
.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final c:Lc/e/d/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/d/x<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/internal/bind/ArrayTypeAdapter$1;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/ArrayTypeAdapter$1;-><init>()V

    sput-object v0, Lc/e/d/b/a/a;->a:Lc/e/d/y;

    return-void
.end method

.method public constructor <init>(Lc/e/d/j;Lc/e/d/x;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/j;",
            "Lc/e/d/x<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc/e/d/x;-><init>()V

    .line 2
    new-instance v0, Lc/e/d/b/a/m;

    invoke-direct {v0, p1, p2, p3}, Lc/e/d/b/a/m;-><init>(Lc/e/d/j;Lc/e/d/x;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lc/e/d/b/a/a;->c:Lc/e/d/x;

    .line 3
    iput-object p3, p0, Lc/e/d/b/a/a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lc/e/d/d/b;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lc/e/d/d/b;->K()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lc/e/d/d/b;->H()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lc/e/d/d/b;->s()V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lc/e/d/d/b;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lc/e/d/b/a/a;->c:Lc/e/d/x;

    invoke-virtual {v1, p1}, Lc/e/d/x;->a(Lc/e/d/d/b;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lc/e/d/d/b;->x()V

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 10
    iget-object v1, p0, Lc/e/d/b/a/a;->b:Ljava/lang/Class;

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_2

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public a(Lc/e/d/d/c;Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_0

    .line 12
    invoke-virtual {p1}, Lc/e/d/d/c;->C()Lc/e/d/d/c;

    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Lc/e/d/d/c;->u()Lc/e/d/d/c;

    const/4 v0, 0x0

    .line 14
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 15
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 16
    iget-object v3, p0, Lc/e/d/b/a/a;->c:Lc/e/d/x;

    invoke-virtual {v3, p1, v2}, Lc/e/d/x;->a(Lc/e/d/d/c;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Lc/e/d/d/c;->w()Lc/e/d/d/c;

    return-void
.end method
