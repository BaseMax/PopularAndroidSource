.class public interface abstract Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question;
.super Ljava/lang/Object;
.source "Question.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/module/engagement/interaction/model/survey/Question$Type;
    }
.end annotation


# static fields
.field public static final QUESTION_TYPE_MULTICHOICE:I = 0x2

.field public static final QUESTION_TYPE_MULTISELECT:I = 0x3

.field public static final QUESTION_TYPE_RANGE:I = 0x4

.field public static final QUESTION_TYPE_SINGLELINE:I = 0x1


# virtual methods
.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getInstructions()Ljava/lang/String;
.end method

.method public abstract getMaxSelections()I
.end method

.method public abstract getMinSelections()I
.end method

.method public abstract getRequiredText()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract isRequired()Z
.end method

.method public abstract setRequiredText(Ljava/lang/String;)V
.end method
