.class public abstract Lcom/a/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/a/a/a/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final MAX_NUM_ATTRIBUTES:I = 0x14

.field public static final MAX_STRING_LENGTH:I = 0x64


# instance fields
.field final b:Lcom/a/a/a/e;

.field final c:Lcom/a/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/a/a/a/e;

    .line 37
    invoke-static {}, Lio/fabric/sdk/android/c;->isDebuggable()Z

    move-result v1

    const/16 v2, 0x14

    const/16 v3, 0x64

    invoke-direct {v0, v2, v3, v1}, Lcom/a/a/a/e;-><init>(IIZ)V

    iput-object v0, p0, Lcom/a/a/a/d;->b:Lcom/a/a/a/e;

    .line 38
    new-instance v0, Lcom/a/a/a/c;

    iget-object v1, p0, Lcom/a/a/a/d;->b:Lcom/a/a/a/e;

    invoke-direct {v0, v1}, Lcom/a/a/a/c;-><init>(Lcom/a/a/a/e;)V

    iput-object v0, p0, Lcom/a/a/a/d;->c:Lcom/a/a/a/c;

    return-void
.end method


# virtual methods
.method public putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/a/a/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ")TT;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/a/a/a/d;->c:Lcom/a/a/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/Number;)V

    return-object p0
.end method

.method public putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/a/a/a/d;->c:Lcom/a/a/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
