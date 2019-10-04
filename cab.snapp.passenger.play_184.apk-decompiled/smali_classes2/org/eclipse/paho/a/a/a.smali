.class public final Lorg/eclipse/paho/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lorg/eclipse/paho/a/a/a/a/u;

.field private b:Lorg/eclipse/paho/a/a/v;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a;->a:Lorg/eclipse/paho/a/a/a/a/u;

    .line 32
    iput-object p2, p0, Lorg/eclipse/paho/a/a/a;->b:Lorg/eclipse/paho/a/a/v;

    return-void
.end method


# virtual methods
.method public final getMessage()Lorg/eclipse/paho/a/a/a/a/u;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a;->a:Lorg/eclipse/paho/a/a/a/a/u;

    return-object v0
.end method

.method public final getToken()Lorg/eclipse/paho/a/a/v;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a;->b:Lorg/eclipse/paho/a/a/v;

    return-object v0
.end method
