.class final Lcom/a/a/a/aa$1;
.super Ljava/util/HashSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Lcom/a/a/a/ag$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 20
    sget-object v0, Lcom/a/a/a/ag$b;->START:Lcom/a/a/a/ag$b;

    invoke-virtual {p0, v0}, Lcom/a/a/a/aa$1;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/a/a/a/ag$b;->RESUME:Lcom/a/a/a/ag$b;

    invoke-virtual {p0, v0}, Lcom/a/a/a/aa$1;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/a/a/a/ag$b;->PAUSE:Lcom/a/a/a/ag$b;

    invoke-virtual {p0, v0}, Lcom/a/a/a/aa$1;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/a/a/a/ag$b;->STOP:Lcom/a/a/a/ag$b;

    invoke-virtual {p0, v0}, Lcom/a/a/a/aa$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
