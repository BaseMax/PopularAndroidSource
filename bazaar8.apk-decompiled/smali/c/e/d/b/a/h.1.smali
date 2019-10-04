.class public final Lc/e/d/b/a/h;
.super Lc/e/d/x;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/d/x<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/e/d/y;


# instance fields
.field public final b:Lc/e/d/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;-><init>()V

    sput-object v0, Lc/e/d/b/a/h;->a:Lc/e/d/y;

    return-void
.end method

.method public constructor <init>(Lc/e/d/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/e/d/x;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/d/b/a/h;->b:Lc/e/d/j;

    return-void
.end method


# virtual methods
.method public a(Lc/e/d/d/b;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lc/e/d/d/b;->K()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 2
    sget-object v1, Lc/e/d/b/a/g;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4
    :pswitch_0
    invoke-virtual {p1}, Lc/e/d/d/b;->H()V

    const/4 p1, 0x0

    return-object p1

    .line 5
    :pswitch_1
    invoke-virtual {p1}, Lc/e/d/d/b;->C()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_2
    invoke-virtual {p1}, Lc/e/d/d/b;->D()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_3
    invoke-virtual {p1}, Lc/e/d/d/b;->I()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_4
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>()V

    .line 9
    invoke-virtual {p1}, Lc/e/d/d/b;->t()V

    .line 10
    :goto_0
    invoke-virtual {p1}, Lc/e/d/d/b;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {p1}, Lc/e/d/d/b;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lc/e/d/b/a/h;->a(Lc/e/d/d/b;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lc/e/d/d/b;->y()V

    return-object v0

    .line 13
    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {p1}, Lc/e/d/d/b;->s()V

    .line 15
    :goto_1
    invoke-virtual {p1}, Lc/e/d/d/b;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {p0, p1}, Lc/e/d/b/a/h;->a(Lc/e/d/d/b;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p1}, Lc/e/d/d/b;->x()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lc/e/d/d/c;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    .line 18
    invoke-virtual {p1}, Lc/e/d/d/c;->C()Lc/e/d/d/c;

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lc/e/d/b/a/h;->b:Lc/e/d/j;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/d/j;->a(Ljava/lang/Class;)Lc/e/d/x;

    move-result-object v0

    .line 20
    instance-of v1, v0, Lc/e/d/b/a/h;

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {p1}, Lc/e/d/d/c;->v()Lc/e/d/d/c;

    .line 22
    invoke-virtual {p1}, Lc/e/d/d/c;->x()Lc/e/d/d/c;

    return-void

    .line 23
    :cond_1
    invoke-virtual {v0, p1, p2}, Lc/e/d/x;->a(Lc/e/d/d/c;Ljava/lang/Object;)V

    return-void
.end method
