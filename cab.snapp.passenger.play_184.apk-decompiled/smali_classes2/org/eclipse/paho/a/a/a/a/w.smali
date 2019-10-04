.class public final Lorg/eclipse/paho/a/a/a/a/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1, v0}, Lorg/eclipse/paho/a/a/a/a/w;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lorg/eclipse/paho/a/a/a/a/w;->a:I

    .line 32
    iput p2, p0, Lorg/eclipse/paho/a/a/a/a/w;->b:I

    return-void
.end method


# virtual methods
.method public final getEncodedLength()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/eclipse/paho/a/a/a/a/w;->b:I

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/eclipse/paho/a/a/a/a/w;->a:I

    return v0
.end method
