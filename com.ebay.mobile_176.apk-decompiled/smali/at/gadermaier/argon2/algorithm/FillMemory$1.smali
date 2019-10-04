.class final Lat/gadermaier/argon2/algorithm/FillMemory$1;
.super Ljava/lang/Object;
.source "FillMemory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/gadermaier/argon2/algorithm/FillMemory;->fillMemoryBlockMultiThreaded(Lat/gadermaier/argon2/model/Instance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$instance:Lat/gadermaier/argon2/model/Instance;

.field final synthetic val$position:Lat/gadermaier/argon2/model/Position;


# direct methods
.method constructor <init>(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lat/gadermaier/argon2/algorithm/FillMemory$1;->val$instance:Lat/gadermaier/argon2/model/Instance;

    iput-object p2, p0, Lat/gadermaier/argon2/algorithm/FillMemory$1;->val$position:Lat/gadermaier/argon2/model/Position;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 48
    iget-object v0, p0, Lat/gadermaier/argon2/algorithm/FillMemory$1;->val$instance:Lat/gadermaier/argon2/model/Instance;

    iget-object v1, p0, Lat/gadermaier/argon2/algorithm/FillMemory$1;->val$position:Lat/gadermaier/argon2/model/Position;

    invoke-static {v0, v1}, Lat/gadermaier/argon2/algorithm/FillSegment;->fillSegment(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/model/Position;)V

    return-void
.end method
