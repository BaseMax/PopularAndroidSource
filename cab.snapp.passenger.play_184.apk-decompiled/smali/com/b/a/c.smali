.class final Lcom/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:C

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/Class;

.field final d:Ljava/lang/Class;


# direct methods
.method constructor <init>(CLjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/b/a/c;->b:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/b/a/c;->c:Ljava/lang/Class;

    .line 18
    iput-object p4, p0, Lcom/b/a/c;->d:Ljava/lang/Class;

    .line 19
    iput-char p1, p0, Lcom/b/a/c;->a:C

    return-void
.end method
