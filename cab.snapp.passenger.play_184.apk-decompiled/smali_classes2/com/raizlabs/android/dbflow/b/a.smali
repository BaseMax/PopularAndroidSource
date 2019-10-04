.class public Lcom/raizlabs/android/dbflow/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/b/a;->a:[B

    return-void
.end method


# virtual methods
.method public getBlob()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/b/a;->a:[B

    return-object v0
.end method

.method public setBlob([B)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/b/a;->a:[B

    return-void
.end method
