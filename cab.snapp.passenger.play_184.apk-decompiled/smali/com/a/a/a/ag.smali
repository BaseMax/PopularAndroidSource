.class final Lcom/a/a/a/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/ag$a;,
        Lcom/a/a/a/ag$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field public final customAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final customType:Ljava/lang/String;

.field public final details:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final predefinedAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final predefinedType:Ljava/lang/String;

.field public final sessionEventMetadata:Lcom/a/a/a/ah;

.field public final timestamp:J

.field public final type:Lcom/a/a/a/ag$b;


# direct methods
.method private constructor <init>(Lcom/a/a/a/ah;JLcom/a/a/a/ag$b;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/ah;",
            "J",
            "Lcom/a/a/a/ag$b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/a/a/a/ag;->sessionEventMetadata:Lcom/a/a/a/ah;

    .line 78
    iput-wide p2, p0, Lcom/a/a/a/ag;->timestamp:J

    .line 79
    iput-object p4, p0, Lcom/a/a/a/ag;->type:Lcom/a/a/a/ag$b;

    .line 80
    iput-object p5, p0, Lcom/a/a/a/ag;->details:Ljava/util/Map;

    .line 81
    iput-object p6, p0, Lcom/a/a/a/ag;->customType:Ljava/lang/String;

    .line 82
    iput-object p7, p0, Lcom/a/a/a/ag;->customAttributes:Ljava/util/Map;

    .line 83
    iput-object p8, p0, Lcom/a/a/a/ag;->predefinedType:Ljava/lang/String;

    .line 84
    iput-object p9, p0, Lcom/a/a/a/ag;->predefinedAttributes:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/a/ah;JLcom/a/a/a/ag$b;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;B)V
    .locals 0

    .line 8
    invoke-direct/range {p0 .. p9}, Lcom/a/a/a/ag;-><init>(Lcom/a/a/a/ah;JLcom/a/a/a/ag$b;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static crashEventBuilder(Ljava/lang/String;)Lcom/a/a/a/ag$a;
    .locals 2

    const-string v0, "sessionId"

    .line 50
    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 51
    new-instance v0, Lcom/a/a/a/ag$a;

    sget-object v1, Lcom/a/a/a/ag$b;->CRASH:Lcom/a/a/a/ag$b;

    invoke-direct {v0, v1}, Lcom/a/a/a/ag$a;-><init>(Lcom/a/a/a/ag$b;)V

    invoke-virtual {v0, p0}, Lcom/a/a/a/ag$a;->details(Ljava/util/Map;)Lcom/a/a/a/ag$a;

    move-result-object p0

    return-object p0
.end method

.method public static crashEventBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/ag$a;
    .locals 1

    .line 55
    invoke-static {p0}, Lcom/a/a/a/ag;->crashEventBuilder(Ljava/lang/String;)Lcom/a/a/a/ag$a;

    move-result-object p0

    const-string v0, "exceptionName"

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/a/a/a/ag$a;->customAttributes(Ljava/util/Map;)Lcom/a/a/a/ag$a;

    move-result-object p0

    return-object p0
.end method

.method public static customEventBuilder(Lcom/a/a/a/m;)Lcom/a/a/a/ag$a;
    .locals 2

    .line 62
    new-instance v0, Lcom/a/a/a/ag$a;

    sget-object v1, Lcom/a/a/a/ag$b;->CUSTOM:Lcom/a/a/a/ag$b;

    invoke-direct {v0, v1}, Lcom/a/a/a/ag$a;-><init>(Lcom/a/a/a/ag$b;)V

    .line 1039
    iget-object v1, p0, Lcom/a/a/a/m;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1}, Lcom/a/a/a/ag$a;->customType(Ljava/lang/String;)Lcom/a/a/a/ag$a;

    move-result-object v0

    .line 1042
    iget-object p0, p0, Lcom/a/a/a/d;->c:Lcom/a/a/a/c;

    iget-object p0, p0, Lcom/a/a/a/c;->b:Ljava/util/Map;

    .line 64
    invoke-virtual {v0, p0}, Lcom/a/a/a/ag$a;->customAttributes(Ljava/util/Map;)Lcom/a/a/a/ag$a;

    move-result-object p0

    return-object p0
.end method

.method public static installEventBuilder(J)Lcom/a/a/a/ag$a;
    .locals 2

    .line 44
    new-instance v0, Lcom/a/a/a/ag$a;

    sget-object v1, Lcom/a/a/a/ag$b;->INSTALL:Lcom/a/a/a/ag$b;

    invoke-direct {v0, v1}, Lcom/a/a/a/ag$a;-><init>(Lcom/a/a/a/ag$b;)V

    .line 45
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "installedAt"

    .line 44
    invoke-static {p1, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/a/a/a/ag$a;->details(Ljava/util/Map;)Lcom/a/a/a/ag$a;

    move-result-object p0

    return-object p0
.end method

.method public static lifecycleEventBuilder(Lcom/a/a/a/ag$b;Landroid/app/Activity;)Lcom/a/a/a/ag$a;
    .locals 1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "activity"

    .line 38
    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 40
    new-instance v0, Lcom/a/a/a/ag$a;

    invoke-direct {v0, p0}, Lcom/a/a/a/ag$a;-><init>(Lcom/a/a/a/ag$b;)V

    invoke-virtual {v0, p1}, Lcom/a/a/a/ag$a;->details(Ljava/util/Map;)Lcom/a/a/a/ag$a;

    move-result-object p0

    return-object p0
.end method

.method public static predefinedEventBuilder(Lcom/a/a/a/v;)Lcom/a/a/a/ag$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/v<",
            "*>;)",
            "Lcom/a/a/a/ag$a;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/a/a/a/ag$a;

    sget-object v1, Lcom/a/a/a/ag$b;->PREDEFINED:Lcom/a/a/a/ag$b;

    invoke-direct {v0, v1}, Lcom/a/a/a/ag$a;-><init>(Lcom/a/a/a/ag$b;)V

    .line 69
    invoke-virtual {p0}, Lcom/a/a/a/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/ag$a;->predefinedType(Ljava/lang/String;)Lcom/a/a/a/ag$a;

    move-result-object v0

    .line 2036
    iget-object v1, p0, Lcom/a/a/a/v;->d:Lcom/a/a/a/c;

    iget-object v1, v1, Lcom/a/a/a/c;->b:Ljava/util/Map;

    .line 70
    invoke-virtual {v0, v1}, Lcom/a/a/a/ag$a;->predefinedAttributes(Ljava/util/Map;)Lcom/a/a/a/ag$a;

    move-result-object v0

    .line 2042
    iget-object p0, p0, Lcom/a/a/a/d;->c:Lcom/a/a/a/c;

    iget-object p0, p0, Lcom/a/a/a/c;->b:Ljava/util/Map;

    .line 71
    invoke-virtual {v0, p0}, Lcom/a/a/a/ag$a;->customAttributes(Ljava/util/Map;)Lcom/a/a/a/ag$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/a/a/a/ag;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-wide v1, p0, Lcom/a/a/a/ag;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/a/ag;->type:Lcom/a/a/a/ag$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", details="

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/a/ag;->details:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customType="

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/a/ag;->customType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customAttributes="

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/a/ag;->customAttributes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", predefinedType="

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/a/ag;->predefinedType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", predefinedAttributes="

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/a/ag;->predefinedAttributes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata=["

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/a/ag;->sessionEventMetadata:Lcom/a/a/a/ah;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]]"

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/ag;->a:Ljava/lang/String;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/ag;->a:Ljava/lang/String;

    return-object v0
.end method
