// Data class for result of a quiz as stored locally in MobX
export class Result {
    constructor(
        public kvisId: string = "not set",
        public answerResults: boolean[] = []
    ) {
    }
}