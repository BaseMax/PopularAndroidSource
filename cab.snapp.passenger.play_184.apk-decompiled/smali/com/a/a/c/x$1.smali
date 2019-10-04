.class final Lcom/a/a/c/x$1;
.super Lorg/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/am;


# direct methods
.method constructor <init>(Lcom/a/a/c/am;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/b;
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/a/a/c/x$1;->a:Lcom/a/a/c/am;

    invoke-direct {p0}, Lorg/a/c;-><init>()V

    .line 148
    iget-object p1, p0, Lcom/a/a/c/x$1;->a:Lcom/a/a/c/am;

    iget-object p1, p1, Lcom/a/a/c/am;->id:Ljava/lang/String;

    const-string v0, "userId"

    invoke-virtual {p0, v0, p1}, Lcom/a/a/c/x$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 149
    iget-object p1, p0, Lcom/a/a/c/x$1;->a:Lcom/a/a/c/am;

    iget-object p1, p1, Lcom/a/a/c/am;->name:Ljava/lang/String;

    const-string v0, "userName"

    invoke-virtual {p0, v0, p1}, Lcom/a/a/c/x$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    .line 150
    iget-object p1, p0, Lcom/a/a/c/x$1;->a:Lcom/a/a/c/am;

    iget-object p1, p1, Lcom/a/a/c/am;->email:Ljava/lang/String;

    const-string v0, "userEmail"

    invoke-virtual {p0, v0, p1}, Lcom/a/a/c/x$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;

    return-void
.end method
