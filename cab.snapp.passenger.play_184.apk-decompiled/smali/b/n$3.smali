.class final Lb/n$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/n;->blackhole()Lb/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final timeout()Lb/w;
    .locals 1

    .line 208
    sget-object v0, Lb/w;->NONE:Lb/w;

    return-object v0
.end method

.method public final write(Lb/c;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-virtual {p1, p2, p3}, Lb/c;->skip(J)V

    return-void
.end method
