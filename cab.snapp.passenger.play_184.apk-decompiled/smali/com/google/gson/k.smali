.class public final Lcom/google/gson/k;
.super Lcom/google/gson/JsonElement;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/gson/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/google/gson/k;

    invoke-direct {v0}, Lcom/google/gson/k;-><init>()V

    sput-object v0, Lcom/google/gson/k;->INSTANCE:Lcom/google/gson/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic deepCopy()Lcom/google/gson/JsonElement;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/google/gson/k;->deepCopy()Lcom/google/gson/k;

    move-result-object v0

    return-object v0
.end method

.method public final deepCopy()Lcom/google/gson/k;
    .locals 1

    .line 49
    sget-object v0, Lcom/google/gson/k;->INSTANCE:Lcom/google/gson/k;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    .line 65
    instance-of p1, p1, Lcom/google/gson/k;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 57
    const-class v0, Lcom/google/gson/k;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
