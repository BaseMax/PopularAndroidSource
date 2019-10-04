.class public Lir/cafebazaar/inline/ui/changers/exceptions/ViewNotFoundException;
.super Lir/cafebazaar/inline/platform/exceptions/PlatformException;
.source "ViewNotFoundException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not find view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lir/cafebazaar/inline/platform/exceptions/PlatformException;-><init>(Ljava/lang/String;)V

    return-void
.end method
