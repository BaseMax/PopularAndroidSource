.class public final Lorg/eclipse/paho/a/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/paho/a/a/m;


# instance fields
.field private a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/eclipse/paho/a/a/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/a;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    new-instance v0, Lorg/eclipse/paho/a/a/s;

    invoke-direct {v0}, Lorg/eclipse/paho/a/a/s;-><init>()V

    throw v0
.end method


# virtual methods
.method public final clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/c/a;->a()V

    .line 91
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/a;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    return-void
.end method

.method public final containsKey(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/c/a;->a()V

    .line 99
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(Ljava/lang/String;)Lorg/eclipse/paho/a/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/c/a;->a()V

    .line 60
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/a/a/r;

    return-object p1
.end method

.method public final keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/c/a;->a()V

    .line 52
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 67
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/eclipse/paho/a/a/c/a;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public final put(Ljava/lang/String;Lorg/eclipse/paho/a/a/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/c/a;->a()V

    .line 75
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/s;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/c/a;->a()V

    .line 83
    iget-object v0, p0, Lorg/eclipse/paho/a/a/c/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
